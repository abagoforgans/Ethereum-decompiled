contract main {




// =====================  Runtime code  =====================


uint8 version; offset 160
address owner;
address stor1;

function version() {
    return version
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setStorageAddress(address arg1) {
    require owner == msg.sender
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0d82171f(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x7ffcd045 with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_58bf15ad(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xe9089452 with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b1eb9c6b(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x2a9a6871 with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e7132951(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xb94d7585 with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2cdd6ecc(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x9abf004 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_2002486b(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x23010740 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_260aae25(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xd279d8e5 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_2e5e26a0(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xdd3a7cde with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_aa29a665(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x2fa70e4d with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_b1e73000(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x24cfe012 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_23edc09b(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x2fa70e4d with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 >= delegate.return_data[0]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x64e77884 with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e63d36f5(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xdd3a7cde with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= delegate.return_data[0]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x13181f49 with:
         gas gas_remaining wei
        args stor1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dfe5b044(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x24cfe012 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x9abf004 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] * delegate.return_data[0])
}

function sub_a7f08db9(?) {
    require owner == msg.sender
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xe9089452 with:
         gas gas_remaining wei
        args stor1, 10^18
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xb94d7585 with:
         gas gas_remaining wei
        args stor1, 10
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x64e77884 with:
         gas gas_remaining wei
        args stor1, 5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x13181f49 with:
         gas gas_remaining wei
        args stor1, 3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x2a9a6871 with:
         gas gas_remaining wei
        args stor1, 300
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x7ffcd045 with:
         gas gas_remaining wei
        args stor1, 900
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d72213f9(?) {
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x9abf004 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x24cfe012 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xdd3a7cde with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x2fa70e4d with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0xd279d8e5 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x97f511aa07d20b6909a8caa30dbd4ddee882f706)
    delegate 0x97f511aa07d20b6909a8caa30dbd4ddee882f706.0x23010740 with:
         gas gas_remaining wei
        args stor1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0], 
           delegate.return_data[0],
           delegate.return_data[0],
           delegate.return_data[0],
           delegate.return_data[0],
           delegate.return_data[0]
}



}
