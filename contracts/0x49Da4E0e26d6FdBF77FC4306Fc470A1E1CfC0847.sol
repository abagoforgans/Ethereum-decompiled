contract main {




// =====================  Runtime code  =====================


address owner;
address tokenContractAddress;
address stor2;

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function transfertokenContract(address arg1) {
    require msg.sender == owner
    if arg1:
        tokenContractAddress = arg1
}

function sub_c73415aa(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0x6ccde640 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require arg2
    require ext_code.size(stor2)
    call stor2.0xfffa9d0c with:
         gas gas_remaining wei
        args arg1, arg2, sha3(sha3(block.hash(block.number), arg1), block.timestamp) % arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Decision(sha3(sha3(block.hash(block.number), arg1), block.timestamp) % arg2, arg1);
}



}
