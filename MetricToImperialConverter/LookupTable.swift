//
//  LookupTable.swift
//  MetricToImperialConverter
//
//  Created by Kirk Jones on 3/7/21.
//

import Foundation

struct CLookupTable {
    let unitConversionLookupTable: [String: Double] =
        [
            "PoundsStone": 0.071429, "PoundsOunces": 16.00, "PoundsMilligrams": 453592.3, "PoundsGrams": 453.5923,
            "PoundsKilograms": 0.4535923, "PoundsTons": 0.0005,
            "OuncesPounds": 0.0625, "OuncesStone": 0.004464286, "OuncesMilligrams": 28349.52, "OuncesGrams": 28.34952,
            "OuncesKilograms": 0.02834952, "OuncesTons": 0.00003125,
            "StonePounds": 14.0, "StoneOunces": 224.0, "StoneMilligrams": 6350293.0, "StoneGrams": 6350.293,
            "StoneKilograms": 6.350293, "StoneTons": 0.007,
            "MilligramsPounds": 0.000002204623, "MilligramsOunces": 0.00003527396, "MilligramsGrams": 0.001,
            "MilligramsKilograms": 0.000001, "MilligramsTons": 0.000000001102311,
            "GramsPounds": 0.002204623, "GramsOunces": 0.03527396, "GramsStone": 0.000157473, "GramsMilligrams": 1000.0,
            "GramsKilograms": 0.001, "GramsTons": 0.000001102311,
            "KilogramsPounds": 2.204623, "KilogramsOunces": 35.27396, "KilogramsStone": 0.157473, "KilogramsMilligrams": 1000000.0,
            "KilogramsGrams": 1000, "KilogramsTons": 0.001102311,
            "TonsPounds": 2000, "TonsOunces": 32000, "TonsStone": 142.8571, "TonsMilligrams": 907184700, "TonsGrams": 907184.7,
            "TonsKilograms": 907.1847,
            "InchesFeet": 0.08333333, "InchesYards": 0.02777778, "InchesMiles": 0.00001578283, "InchesMillimeters": 25.4,
            "InchesCentimeters": 2.54, "InchesMeters": 0.0254, "InchesKilometers": 0.0000254,
            "FeetInches": 12.0, "FeetYards": 0.3333333, "FeetMiles": 0.0001893939, "FeetMilimeters": 304.8,
            "FeetCentimeters": 30.48, "FeetMeters": 0.3048, "FeetKilometers": 0.0003048,
            "YardsInches": 36, "YardsFeet": 3.0, "YardsMiles": 0.0005681818, "YardsMillimeters": 914.4, "YardsCentimeters": 91.44,
            "YardsMeters": 0.9144, "YardsKilometers": 0.0009144,
            "MilesInches": 63360.0, "MilesFeet": 5280, "MilesYards": 1760.0, "MilesMillimeters": 1609344.0,
            "MilesCentimeters": 160934.4, "MilesMeters": 1609.344, "MilesKilometers": 1.609344,
            "MillimetersInches": 0.03937008, "MillimetersFeet": 0.00328084, "MillimetersYards": 0.001093613,
            "MillimetersMiles": 0.0000006213712, "MillimetersCentimeters": 0.1, "MillemetersMeters": 0.001,
            "MillimetersKilometers": 0.000001,
            "CentimetersInches": 0.03937008, "CentimetersFeet": 0.00328084, "CentimetersYards": 0.001093613,
            "CentimetersMiles": 0.0000006213712, "CentimetersMillimeters": 10, "CentimetersMeters": 0.01,
            "CentimetersKilometers": 0.00001,
            "MetersInches": 39.37008, "MetersFeet": 3.28084, "MetersYards": 1.093613,
            "MetersMiles": 0.0006213712, "MetersMillimeters": 1000.0, "MetersKilometers": 0.001, "MetersCentimeters": 100,
            "KilometersInches": 39370.08, "KilometersFeet": 3280.84, "KilometersYards": 1093.613,
            "KilometersMiles": 0.6213712, "KilometersMillimeters": 1000000.0, "KilometersCentimeters": 100000,
            "KilometersMeters": 0.001,
            "TeaspoonTablespoon": 0.3333333, "TeaspoonCups": 0.02083333, "TeaspoonQuarts": 0.005208333, "TeaspoonGallons": 0.001302083,
            "TeaspoonMilliliters": 5.919388, "TeaspoonDeciliters": 0.05919388, "TeaspoonLiters": 0.005919388,
            "TablespoonTeaspoon": 3.0, "TablespoonCups": 0.0625, "TablespoonQuarts": 0.015625, "TablespoonGallons": 0.00390625,
            "TablespoonMilliliters": 17.75816, "TablespoonDeciliters": 0.1775816, "TablespoonLiters": 0.01775816,
            "CupsTeaspoon": 48.0, "CupsTablespoon": 16.0, "CupsQuarts": 0.25, "CupsGallons": 0.0625, "CupsMilliliters": 284.1306,
            "CupsDeciliters": 2.841306, "CupsLiters": 0.2841306,
            "QuartsTeaspoon": 192.0, "QuartsTablespoon": 64.0, "QuartsCups": 4.0, "QuartsGallons": 0.25, "QuartsMilliliters": 1136.523,
            "QuartsDeciliters": 11.36523, "QuartsLiters": 1.136523,
            "GallonsTeaspoon": 768.0, "GallonsTablespoon": 256.0, "GallonsCups": 16.0, "GallonsQuarts": 4.0, "GallonsMilliliters": 4546.09,
            "GallonsDeciliters": 45.4609, "GallonsLiters": 4.54609,
            "MillilitersTeaspoon": 0.1689364, "MillilitersTablespoon": 0.05631213, "MillilitersCups": 0.003519508, "MillilitersQuarts": 0.000879877,
            "MillilitersGallons": 0.0002199692, "MillilitersDeciliters": 0.01, "MillilitersLiters": 0.001,
            "DecilitersTeaspoon": 16.89364, "DecilitersTablespoon": 5.631213, "DecilitersCups": 0.3519508, "DecilitersQuarts": 0.0879877,
            "DecilitersMilliliters": 100.0, "DecilitersGallons": 0.02199692, "DecilitersLiters": 0.1,
            "LitersTeaspoon": 168.9364, "LitersTablespoon": 56.31213, "LitersCups": 3.519508, "LitersQuarts": 0.879877, "LitersGallons": 0.2199692,
            "LitersMilliliters": 1000.0, "LitersDeciliters": 10.0
        ]
}
