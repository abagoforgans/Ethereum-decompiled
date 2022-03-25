contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2993]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address dvipAddress;
uint256 stor1;
address beneficiaryAddress;
uint256 stor2;
uint256 price;
array of struct tos;
array of uint256 stor5;

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function tos() payable {
    return tos[0 len tos.length].field_0
}

function owner() payable {
    return address(owner)
}

function price() payable {
    return price
}

function terms(uint256 arg1) payable {
    return stor[arg1 + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0][0 len stor[arg1 + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0].length]
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
    emit code.data[2961 len 32]: msg.sender, call.func_hash, arg1
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
    emit code.data[2961 len 32]: msg.sender, call.func_hash, arg1
    return 1
}

function setBeneficiary(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit code.data[2961 len 32]: msg.sender, call.func_hash, arg1
    return 1
}

function setTerm(uint256 arg1, string arg2) payable {
    require msg.sender == address(owner)
    require arg1 < stor5.length
    stor5[arg1][] = Array(len=arg2.length, data=arg2[all])
    emit code.data[2961 len 32]: msg.sender, call.func_hash, sha3(arg1, arg2[all])
    return 1
}

function setToS(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == address(owner)
    tos[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(tos.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + tos.length + 128 > idx + 32:
        mem[idx + 32] = tos[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit code.data[2961 len 32]: msg.sender, call.func_hash, sha3(mem[ceil32(arg1.length) + 128 len tos.length])
    return 1
}

function pushTerm(string arg1) payable {
    require msg.sender == address(owner)
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        mem[0] = 5
        idx = stor5.length + 1
        while sha3(5) + stor5.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    stor5[stor5.length][] = Array(len=arg1.length, data=arg1[all])
    emit code.data[2961 len 32]: msg.sender, call.func_hash, sha3(arg1[all])
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
