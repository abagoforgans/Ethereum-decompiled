contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 468]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function newOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
