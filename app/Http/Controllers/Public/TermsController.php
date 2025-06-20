<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use App\Models\News;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use PhpOffice\PhpWord\IOFactory;

class TermsController extends Controller
{
    public function index()
    {
        $data = [
            'import_letter_of_credit' => [
                ['sno'=>'1', 'label'=>'Import Letter of Credit (LC)', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.1', 'label'=>'Opening LC (For 90 days or Part thereof', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.1.1', 'label'=>'Opening Commission', 'fbc'=>'Rate (%) | Min (USD)' , 'ccl'=>'2 | 200' , 'ccf'=>'1.2 | 200', 'rem'=>''],
                ['sno'=>'1.1.1', 'label'=>'Service Charge', 'fbc'=>'Rate (%) | Min (USD)' , 'ccl'=>'2 | 200' , 'ccf'=>'1.2 | 200', 'rem'=>''],
                ['sno'=>'1.1.2', 'label'=>'Swift Charge', 'fbc'=>'Flat (USD)' , 'ccl'=>'200' , 'ccf'=>'200', 'rem'=>''],

                ['sno'=>'1.2', 'label'=>'Amendment (For 90 days or Part thereof)', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.2.1', 'label'=>'SWIFT Charge (if applicable)', 'fbc'=>'Flat (USD)' , 'ccl'=>'200' , 'ccf'=>'200', 'rem'=>''],
                ['sno'=>'1.2.2', 'label'=>'Increase in LC Amount (For 90 days or Part thereof)', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.2.2.1', 'label'=>'Opening Commission', 'fbc'=>'Rate (%)' , 'ccl'=>'2' , 'ccf'=>'1.5', 'rem'=>'Applicable on increased amount'],
                ['sno'=>'1.2.2.2', 'label'=>'Service charge', 'fbc'=>'Rate (%)' , 'ccl'=>'2' , 'ccf'=>'1.5', 'rem'=>'Applicable on increased amount'],
                ['sno'=>'1.2.2.3', 'label'=>'Shipments made before issuance of LC  or after expire of LC', 'fbc'=>'Flat (USD)' , 'ccl'=>'300' , 'ccf'=>'300', 'rem'=>'Applicable on increased amount'],

                ['sno'=>'1.3', 'label'=>'Cancellation of LC  (For 90 days or Part thereof)', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.3.1', 'label'=>'SWIFT Charge', 'fbc'=>'Flat (USD)' , 'ccl'=>'200' , 'ccf'=>'200', 'rem'=>''],

                ['sno'=>'1.4', 'label'=>'Settlement of Letter of Credit (For 90 days or Part thereof)', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.4.1', 'label'=>'Exchange Commission payable to NBE', 'fbc'=>'Rate (%)' , 'ccl'=>'2.5' , 'ccf'=>'N/A', 'rem'=>''],
                ['sno'=>'1.4.2', 'label'=>'SWIFT charge (if a SWIFT message is involved)', 'fbc'=>'Flat (In USD)' , 'ccl'=>'200' , 'ccf'=>'200', 'rem'=>' '],
                ['sno'=>'1.4.3', 'label'=>'Interest on Advance against Import Bills', 'fbc'=>'Rate (%)' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>'As per our bank’s credit terms and tariffs'],

                ['sno'=>'1.5', 'label'=>'Excess Drawings on the LC (for documents that exceed the allowed amount )', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>''],
                ['sno'=>'1.5.1', 'label'=>'Exchange Commission payable to NBE', 'fbc'=>'Rate (%)' , 'ccl'=>'2.5' , 'ccf'=>'N/A', 'rem'=>'Applicable on excess invoice value'],
                ['sno'=>'1.5.2', 'label'=>'Service Charge ', 'fbc'=>'' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>'Applicable on excess invoice value'],
                ['sno'=>'1.5.3', 'label'=>'Exchange Commission payable to NBE', 'fbc'=>'Rate (%)' , 'ccl'=>'2.5' , 'ccf'=>'N/A', 'rem'=>'Applicable on excess invoice value'],

                ['sno'=>'1.4.2', 'label'=>'SWIFT charge (if a SWIFT message is involved)', 'fbc'=>'Flat (In USD)' , 'ccl'=>'200' , 'ccf'=>'200', 'rem'=>' '],
                ['sno'=>'1.4.3', 'label'=>'Interest on Advance against Import Bills', 'fbc'=>'Rate (%)' , 'ccl'=>'' , 'ccf'=>'', 'rem'=>'As per our bank’s credit terms and tariffs'],

            ],
            'purchase_order_approval' => [
                ['label'=>'Gasha Saving (<10k)', 'rate'=>'7%'],
                ['label'=>'Gasha Saving (10k–99,999)', 'rate'=>'7.5%'],
                ['label'=>'Gasha Saving (100k–500k)', 'rate'=>'7.75%'],
                ['label'=>'Gasha Saving (>500k)', 'rate'=>'8%'],
                ['label'=>'CBE Guzo Saving', 'rate'=>'7%'],
                ['label'=>'Foreign Hawala Saving', 'rate'=>'14%'],
            ],
            'charges_for_returning_full_document' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'export_letter_of_credit' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'outgoing_fund_transfer' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'incomming_foreign_transfer' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'retransfer_foreign_transfer' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'swift_charges' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'sea_fright_collection_import' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],

            'fcy_cash_note_sales' => [
                ['label'=>'Cash withdrawal at branch – up to Birr 1,000', 'fee'=>'Free'],
                ['label'=>'Cash withdrawal – Birr 1,001–10,000', 'fee'=>'Birr 5'],
                ['label'=>'Cash withdrawal – above Birr 10,001', 'fee'=>'Birr 10'],
                // ... repeat for each item
                ['label'=>'Replacement of lost passbook', 'fee'=>'Birr 50'],
                ['label'=>'Signature change', 'fee'=>'Birr 20/account'],
                // etc.
            ],
        ];

    //     // Load the Word document from storage
    // $filePath = storage_path('app/documents/terms.docx'); // Adjust path accordingly

    // $docText = '';
    // if (file_exists($filePath)) {
    //     $phpWord = IOFactory::load($filePath);
    //     foreach ($phpWord->getSections() as $section) {
    //         $elements = $section->getElements();
    //         foreach ($elements as $element) {
    //             if (method_exists($element, 'getText')) {
    //                 $docText .= $element->getText() . "\n";
    //             }
    //         }
    //     }
    // } else {
    //     $docText = 'Document not found.';
    // }

    // $docUrl = asset('storage/documents/terms.docx');
    // return view('public.terms-and-tariff.index', compact('docUrl'));

    // $html = '';

    // $filePath = storage_path('app/public/documents/terms.docx');
    // if (file_exists($filePath)) {
    //     $phpWord = IOFactory::load($filePath, 'Word2007');
    //     $writer = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'HTML');

    //     // Save HTML to temp location and read back
    //     $tempHtmlPath = storage_path('app/temp.html');
    //     $writer->save($tempHtmlPath);
    //     $html = file_get_contents($tempHtmlPath);
    // }

    // return view('public.terms-and-tariff.index', compact('html'));


        return view('public.terms-and-tariff.index', compact('data'));
    }
}