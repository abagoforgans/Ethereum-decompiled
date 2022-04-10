contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
address stor7;
address stor8;
address stor9;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    uint8(stor3.length) = 54
    stor3.length.field_8 = 'Smart Investment Fund Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor4.length) = 8
    stor4.length.field_8 = 'SIFT' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor8 = address(code.data[5372 len 32])
    require ext_code.size(address(code.data[5372 len 32]))
    call address(code.data[5372 len 32]).0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 300201707171440 == ext_call.return_data[0]
    stor9 = address(code.data[5404 len 32])
    require ext_code.size(address(code.data[5404 len 32]))
    call address(code.data[5404 len 32]).0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 100201707171503 == ext_call.return_data[0]
    stor7 = address(code.data[5372 len 32])
    return code.data[745 len 4627]
}



// =====================  Runtime code  =====================


const contractVersion = 500201707171440


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor7; offset 160
address icoContractAddress;
address stor8;
address stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function icoContractAddress() {
    return icoContractAddress
}

function isClosed() {
    return bool(stor7)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function tokenHolderCount() {
    require ext_code.size(stor9)
    call stor9.0xd6f5792d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    return stor2.length
}

function tokenHolder(uint256 arg1) {
    require ext_code.size(stor9)
    call stor9.0xd6f5792d with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 < stor2.length
    return address(stor2[arg1].field_0)
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(stor8)
    call stor8.0x68955fb1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xc2f0d93f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require 68 == calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require icoContractAddress == msg.sender
    require ext_code.size(stor8)
    call stor8.0x68955fb1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            emit Transfer(arg2, 0, arg1);
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        address(stor2[stor2.length].field_0) = arg1
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor8)
    call stor8.0x68955fb1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xc2f0d93f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require 68 == calldata.size
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if balanceOf[address(arg1)] < 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            if balanceOf[address(msg.sender)] < 1:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    if address(stor2[idx].field_0) != msg.sender:
                        idx = idx + 1
                        continue 
                    s = idx
                    while s < stor2.length - 1:
                        require s + 1 < stor2.length
                        require s < stor2.length
                        mem[0] = 2
                        address(stor2[s].field_0) = address(stor2[s].field_256)
                        s = s + 1
                        continue 
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = stor2.length + sha3(2) - 1
                        while sha3(2) + stor2.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        address(stor2[stor2.length].field_0) = arg1
    if balanceOf[address(msg.sender)] < 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            s = idx
            while s < stor2.length - 1:
                require s + 1 < stor2.length
                require s < stor2.length
                mem[0] = 2
                address(stor2[s].field_0) = address(stor2[s].field_256)
                s = s + 1
                continue 
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                idx = stor2.length + sha3(2) - 1
                while sha3(2) + stor2.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit Transfer(arg2, msg.sender, arg1);
            return 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(stor8)
    call stor8.0x68955fb1 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0xc2f0d93f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require 100 == calldata.size
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    if arg3 + balanceOf[address(arg2)] <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if not balanceOf[address(arg2)]:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg2:
                idx = idx + 1
                continue 
            if not balanceOf[address(arg1)]:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    if address(stor2[idx].field_0) != arg1:
                        idx = idx + 1
                        continue 
                    s = idx
                    while s < stor2.length - 1:
                        require s + 1 < stor2.length
                        require s < stor2.length
                        mem[0] = 2
                        address(stor2[s].field_0) = address(stor2[s].field_256)
                        s = s + 1
                        continue 
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = stor2.length + sha3(2) - 1
                        while sha3(2) + stor2.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit Transfer(arg3, arg1, arg2);
                    return 1
            emit Transfer(arg3, arg1, arg2);
            return 1
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        address(stor2[stor2.length].field_0) = arg2
    if not balanceOf[address(arg1)]:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            s = idx
            while s < stor2.length - 1:
                require s + 1 < stor2.length
                require s < stor2.length
                mem[0] = 2
                address(stor2[s].field_0) = address(stor2[s].field_256)
                s = s + 1
                continue 
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                idx = stor2.length + sha3(2) - 1
                while sha3(2) + stor2.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit Transfer(arg3, arg1, arg2);
            return 1
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
