contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 477]
}



// =====================  Runtime code  =====================


address sub_249533abAddress;
array of struct reports;

function sub_249533ab(?) {
    return sub_249533abAddress
}

function reports(uint256 arg1) {
    require arg1 < reports.length
    return reports[arg1].field_0, reports[arg1].field_256
}

function _fallback() payable {
    revert 
}

function report(bytes32 arg1) {
    reports.length++
    if not reports.length <= reports.length + 1:
        idx = 2 * reports.length + 1
        while 2 * reports.length > idx:
            reports[idx].field_0 = 0
            reports[idx].field_256 = 0
            idx = idx + 2
            continue 
    reports[reports.length].field_0 = msg.sender
    reports[reports.length].field_256 = arg1
}



}
