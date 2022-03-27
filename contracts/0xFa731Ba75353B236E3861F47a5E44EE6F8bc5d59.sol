contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    require ext_code.size(0x361b20fa9312131542048e6a26feb3fbe869ed72)
    delegate 0x361b20fa9312131542048e6a26feb3fbe869ed72.0x9447fa17 with:
         gas gas_remaining - 50 wei
        args 0, 2
    require delegate.return_code
    return code.data[172 len 314]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function sub_76b8e528(?) {
    require ext_code.size(0x361b20fa9312131542048e6a26feb3fbe869ed72)
    delegate 0x361b20fa9312131542048e6a26feb3fbe869ed72.0xfc22471a with:
         gas gas_remaining - 50 wei
        args 0
    require delegate.return_code
    return delegate.return_data[0]
}



}
