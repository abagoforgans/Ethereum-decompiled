contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x230cfc895646d34538ae5b684d76bf40a8b8b89
    return code.data[179 len 2569]
}



// =====================  Runtime code  =====================


const randomAddress = 0x230cfc895646d34538ae5b684d76bf40a8b8b89


array of uint256 stor-3;
array of uint64 stor-2;
array of uint8 stor-1;
address owner;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint8 stor4;
array of uint256 stor5;
array of address stor6;

function rand() {
    return address(stor1.length)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function roundResults(uint256 arg1) {
    require arg1 < 9
    return stor2[arg1], stor3[arg1], bool(stor4[arg1]), stor5[arg1], stor6[arg1]
}

function setWinner(uint256 arg1, address arg2) {
    require msg.sender == owner
    require arg1 < 9
    require arg1 > 0
    require arg1 - 1 < 9
    require stor-1[arg1]
    require arg1 - 1 < 9
    require not address(stor1[arg1].field_0)
    require arg1 - 1 < 9
    address(stor1[arg1].field_0) = arg2
    emit WinnerSet(arg1, uint256(stor[5 * arg1].field_0), address(stor1[arg1].field_0));
    return 1
}

function setRound(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < 9
    require arg1 > 0
    require arg2 < 74
    require arg2 > 0
    require arg1 - 1 < 9
    require not stor-1[arg1]
    require arg1 - 1 < 9
    stor-3[arg1] = arg1
    uint256(stor-2[arg1]) = arg2
    stor-1[arg1] = 0
    uint256(stor[5 * arg1].field_0) = 80
    address(stor1[arg1].field_0) = 0
    stor1[arg1].field_256 % 1 = 0
    require arg1 < 9
    require arg1 > 0
    require arg1 - 1 < 9
    require not stor-1[arg1]
    require arg1 - 1 < 9
    require ext_code.size(address(stor1.length))
    call address(stor1.length).0x1a1a7993 with:
         gas gas_remaining - 710 wei
        args uint64(stor-2[arg1])
    require ext_call.success
    emit RandomNumGenerated(ext_call.return_data[24 len 8]);
    require arg1 - 1 < 9
    uint64(stor[5 * arg1].field_0) = uint64(ext_call.return_data[0])
    Mask(192, 0, stor[5 * arg1].field_64) = 0
    stor-1[arg1] = 1
    emit RaffleIssued(arg1, uint256(stor-2[arg1]), uint256(stor[5 * arg1].field_0));
    return 1
}



}
