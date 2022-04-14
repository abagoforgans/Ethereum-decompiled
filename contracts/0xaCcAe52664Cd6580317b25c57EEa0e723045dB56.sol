contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = code.data[1622 len 20]
    stor1 = code.data[1654 len 20]
    stor3 = code.data[1494 len 20]
    stor4 = code.data[1526 len 20]
    stor2 = msg.sender
    stor5 = code.data[1546 len 32]
    stor6 = code.data[1578 len 32]
    return code.data[193 len 1289]
}



// =====================  Runtime code  =====================


address exchangeAddress;
address sub_891ac16bAddress;
address sub_1bcfc432Address;
address sub_e8c0f815Address;
address sub_cdbc11b1Address;
uint256 sub_07262375;
uint256 sub_38c8f2ce;

function sub_07262375(?) {
    return sub_07262375
}

function sub_1bcfc432(?) {
    return sub_1bcfc432Address
}

function sub_38c8f2ce(?) {
    return sub_38c8f2ce
}

function sub_891ac16b(?) {
    return sub_891ac16bAddress
}

function sub_cdbc11b1(?) {
    return sub_cdbc11b1Address
}

function exchange() {
    return exchangeAddress
}

function sub_e8c0f815(?) {
    return sub_e8c0f815Address
}

function _fallback() payable {
  stop
}

function sub_9452651b(?) {
    if sub_891ac16bAddress == msg.sender:
        sub_38c8f2ce = arg1
}

function sub_3ff3620b(?) {
    if sub_891ac16bAddress != msg.sender:
        return 0
    if not sub_e8c0f815Address:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(sub_e8c0f815Address)
        call sub_e8c0f815Address.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
    require ext_call.success
    return 1
}

function sub_89c2dcb0(?) {
    if exchangeAddress == msg.sender:
        if not sub_e8c0f815Address:
            call sub_1bcfc432Address with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(sub_e8c0f815Address)
            call sub_e8c0f815Address.balanceOf(address rg1) with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(sub_e8c0f815Address)
            call sub_e8c0f815Address.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args tx.origin, ext_call.return_data[0]
        require ext_call.success
        sub_38c8f2ce = 0
        sub_07262375 = 0
    else:
        if sub_1bcfc432Address == tx.origin:
            if not sub_e8c0f815Address:
                call sub_1bcfc432Address with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(sub_e8c0f815Address)
                call sub_e8c0f815Address.balanceOf(address rg1) with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(sub_e8c0f815Address)
                call sub_e8c0f815Address.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args tx.origin, ext_call.return_data[0]
            require ext_call.success
            sub_38c8f2ce = 0
            sub_07262375 = 0
}



}
