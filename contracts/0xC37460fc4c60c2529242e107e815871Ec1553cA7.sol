contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = 0x17c432e543952f950e8cb05dd5107efe6864d1de
    stor1 = 0x1ea3cd9cfabe02f06b688f832ab1ab9c488094e5
    stor2 = 0x6c54b937b5e1bdf5e670f842ae9afd056bb4a6d6
    return code.data[322 len 1298]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 raised;
uint8 stor4;

function raised() {
    return raised
}

function buyTokens() payable {
    require not stor4
    require msg.value > 0
    require raised < 12000 * 10^18
    raised += msg.value
    require ext_code.size(stor1)
    call stor1.0xec8ac4d8 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args stor2
    require ext_call.success
}

function _fallback() payable {
    require not stor4
    require msg.value > 0
    require raised < 12000 * 10^18
    raised += msg.value
    require ext_code.size(stor1)
    call stor1.0xec8ac4d8 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args stor2
    require ext_call.success
}

function finalize() {
    require not stor4
    require block.timestamp > 418767 * 3600
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args stor2
    require ext_call.success
    if raised:
        require raised
        require 5 * 3600 * raised / raised == 5 * 3600
    if 5 * 3600 * raised / 10^18 > ext_call.return_data[0]:
        require ext_code.size(stor0)
        call stor0.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args stor2, (5 * 3600 * raised / 10^18) - ext_call.return_data[0]
        require ext_call.success
    stor4 = 1
}



}
