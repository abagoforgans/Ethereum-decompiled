contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = 1541422740
    require not msg.value
    stor1 = msg.sender
    return code.data[68 len 671]
}



// =====================  Runtime code  =====================


uint256 lock;
address owner;

function owner() {
    return owner
}

function lock() {
    return lock
}

function _fallback() payable {
    revert
}

function transfer(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    return 1
}

function withdrawal(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require block.timestamp >= lock
    require arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
