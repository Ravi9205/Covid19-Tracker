// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let districtData = try? newJSONDecoder().decode(DistrictData.self, from: jsonData)

import Foundation

// MARK: - DistrictData
struct DistrictData: Codable {
    let casesTimeSeries: [CasesTimeSery]
    let statewise: [Statewise]
    let tested: [Tested]
    
    enum CodingKeys: String, CodingKey {
        case casesTimeSeries = "cases_time_series"
        case statewise, tested
    }
}

// MARK: - CasesTimeSery
struct CasesTimeSery: Codable {
    let dailyconfirmed, dailydeceased, dailyrecovered, date: String
    let dateymd, totalconfirmed, totaldeceased, totalrecovered: String
}

// MARK: - Statewise
struct Statewise: Codable {
    let active, confirmed, deaths, deltaconfirmed: String
    let deltadeaths, deltarecovered, lastupdatedtime, migratedother: String
    let recovered, state, statecode, statenotes: String
}

// MARK: - Tested
struct Tested: Codable {
    let dailyrtpcrsamplescollectedicmrapplication, firstdoseadministered, frontlineworkersvaccinated1Stdose, frontlineworkersvaccinated2Nddose: String
    let healthcareworkersvaccinated1Stdose, healthcareworkersvaccinated2Nddose, over45Years1Stdose, over45Years2Nddose: String
    let over60Years1Stdose, over60Years2Nddose, positivecasesfromsamplesreported, registration1845Years: String
    let registrationabove45Years, registrationflwhcw, registrationonline, registrationonspot: String
    let samplereportedtoday, seconddoseadministered: String
    let source: String
    let source2: String
    let source3: String
    let source4: String
    let testedasof, testsconductedbyprivatelabs, to60YearswithcoMorbidities1Stdose, to60YearswithcoMorbidities2Nddose: String
    let totaldosesadministered, totaldosesavailablewithstates, totaldosesinpipeline, totalindividualsregistered: String
    let totalindividualstested, totalindividualsvaccinated, totalpositivecases, totalrtpcrsamplescollectedicmrapplication: String
    let totalsamplestested, totalsessionsconducted, updatetimestamp, years1Stdose: String
    let years2Nddose: String
    
    enum CodingKeys: String, CodingKey {
        case dailyrtpcrsamplescollectedicmrapplication, firstdoseadministered
        case frontlineworkersvaccinated1Stdose = "frontlineworkersvaccinated1stdose"
        case frontlineworkersvaccinated2Nddose = "frontlineworkersvaccinated2nddose"
        case healthcareworkersvaccinated1Stdose = "healthcareworkersvaccinated1stdose"
        case healthcareworkersvaccinated2Nddose = "healthcareworkersvaccinated2nddose"
        case over45Years1Stdose = "over45years1stdose"
        case over45Years2Nddose = "over45years2nddose"
        case over60Years1Stdose = "over60years1stdose"
        case over60Years2Nddose = "over60years2nddose"
        case positivecasesfromsamplesreported
        case registration1845Years = "registration18-45years"
        case registrationabove45Years = "registrationabove45years"
        case registrationflwhcw, registrationonline, registrationonspot, samplereportedtoday, seconddoseadministered, source, source2, source3, source4, testedasof, testsconductedbyprivatelabs
        case to60YearswithcoMorbidities1Stdose = "to60yearswithco-morbidities1stdose"
        case to60YearswithcoMorbidities2Nddose = "to60yearswithco-morbidities2nddose"
        case totaldosesadministered, totaldosesavailablewithstates, totaldosesinpipeline, totalindividualsregistered, totalindividualstested, totalindividualsvaccinated, totalpositivecases, totalrtpcrsamplescollectedicmrapplication, totalsamplestested, totalsessionsconducted, updatetimestamp
        case years1Stdose = "years1stdose"
        case years2Nddose = "years2nddose"
    }
}
