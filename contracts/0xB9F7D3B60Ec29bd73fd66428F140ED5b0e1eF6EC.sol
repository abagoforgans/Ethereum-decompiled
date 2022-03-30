contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    require code.data[10211 len 20]
    stor1 = code.data[10211 len 20]
    return code.data[124 len 10075]
}



// =====================  Runtime code  =====================


#
#  - addJobSponsorship(uint256 arg1, string arg2, string arg3)
#  - refundJobSponsorships(uint256 arg1, uint256 arg2)
#
address owner;
uint8 smartContractStatus; offset 160
address sub_5fcb246dAddress;
address sub_9f367d32Address;

function smartContractStatus() {
    return smartContractStatus
}

function sub_5fcb246d(?) {
    return sub_5fcb246dAddress
}

function owner() {
    return owner
}

function sub_9f367d32(?) {
    return sub_9f367d32Address
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setEthlanceSponsorWalletContract(address arg1) {
    require owner == msg.sender
    require arg1
    sub_9f367d32Address = arg1
}

function setSmartContractStatus(uint8 arg1) {
    require owner == msg.sender
    smartContractStatus = arg1
    emit onSmartContractStatusSet(arg1);
}

function getConfig(bytes32 arg1) {
    require ext_code.size(sub_5fcb246dAddress)
    call sub_5fcb246dAddress.getUIntValue(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args sha3('config/', arg1)
    require ext_call.success
    return ext_call.return_data[0]
}



}
