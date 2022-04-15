contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = code.data[1868 len 20]
    stor1 = code.data[1888 len 32]
    stor2 = code.data[1932 len 20]
    stor3 = code.data[1964 len 20]
    stor4 = code.data[1996 len 20]
    stor5 = code.data[2016 len 32]
    return code.data[190 len 1666]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor3;
address stor4;
uint256 stor4;
uint256 stor5;
uint8 stor6;

function ban() {
    require stor2 == msg.sender
    stor6 = 1
    address(stor3) = stor2
    address(stor4) = stor2
}

function sub_d0b022ba(?) {
    if stor1 < arg3:
        require ext_code.size(stor0)
        call stor0.0xe0a69f0d with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if stor1 < ext_call.return_data[0]:
            if not stor6:
                require ext_code.size(stor0)
                call stor0.0xd25a992c with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
                require ext_code.size(stor0)
                call stor0.0x6fe3caba with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
                require ext_code.size(stor0)
                call stor0.0xa759c3a2 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                stor5 = ext_call.return_data[0]
                stor1 = ext_call.return_data[0]
    require address(stor4) == msg.sender
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(stor3), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require not stor6
    require ext_code.size(stor0)
    call stor0.0xe0a69f0d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if stor1 >= ext_call.return_data[0]:
        call address(stor3) with:
           value msg.value wei
             gas stor5 wei
        require ext_call.success
    else:
        if stor6:
            call address(stor3) with:
               value msg.value wei
                 gas stor5 wei
            require ext_call.success
        else:
            require ext_code.size(stor0)
            call stor0.0xd25a992c with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
            require ext_code.size(stor0)
            call stor0.0x6fe3caba with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
            require ext_code.size(stor0)
            call stor0.0xa759c3a2 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            stor5 = ext_call.return_data[0]
            stor1 = ext_call.return_data[0]
            call address(stor3) with:
               value msg.value wei
                 gas stor5 wei
    emit Deposit(msg.sender, tx.origin, msg.value);
}



}
