contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1226]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address dvipAddress;
uint256 stor1;
address beneficiaryAddress;
uint256 stor2;
uint256 price;

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function owner() payable {
    return address(owner)
}

function price() payable {
    return price
}

function dvipAddress() payable {
    return address(dvipAddress)
}

function assert(bool arg1) payable {
    require arg1
}

function setPrice(uint256 arg1) payable {
    require msg.sender == address(owner)
    price = arg1
    emit PropertySet(msg.sender, call.func_hash, arg1);
    return 1
}

function setOwner(address arg1) payable {
    require msg.sender == address(owner)
    emit SetOwner(address(owner), arg1);
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    call arg1 with:
       value arg2 wei
         gas 0 wei
    require ext_call.success
    return 1
}

function setDVIP(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    emit PropertySet(msg.sender, call.func_hash, arg1);
    return 1
}

function setBeneficiary(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit PropertySet(msg.sender, call.func_hash, arg1);
    return 1
}

function _fallback() payable {
    require msg.value >= price
    if 0 == price:
        call address(dvipAddress).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args msg.sender, msg.value / price
        if ext_call.success:
            if ext_call.return_data[0]:
                if msg.value <= msg.value / price * price:
                    if 0 == address(beneficiaryAddress):
                    call address(beneficiaryAddress) with:
                       value msg.value / price * price wei
                         gas 0 wei
                    if ext_call.success:
                else:
                    if msg.value / price * price <= msg.value:
                        call msg.sender with:
                           value msg.value - (msg.value / price * price) wei
                             gas 0 wei
                        if ext_call.success:
                            if 0 == address(beneficiaryAddress):
                            call address(beneficiaryAddress) with:
                               value msg.value / price * price wei
                                 gas 0 wei
                            if ext_call.success:
    else:
        if msg.value / price * price / price == msg.value / price:
            call address(dvipAddress).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, msg.value / price
            if ext_call.success:
                if ext_call.return_data[0]:
                    if msg.value <= msg.value / price * price:
                        if 0 == address(beneficiaryAddress):
                        call address(beneficiaryAddress) with:
                           value msg.value / price * price wei
                             gas 0 wei
                        if ext_call.success:
                    else:
                        if msg.value / price * price <= msg.value:
                            call msg.sender with:
                               value msg.value - (msg.value / price * price) wei
                                 gas 0 wei
                            if ext_call.success:
                                if 0 == address(beneficiaryAddress):
                                call address(beneficiaryAddress) with:
                                   value msg.value / price * price wei
                                     gas 0 wei
                                if ext_call.success:
    revert 
}



}
