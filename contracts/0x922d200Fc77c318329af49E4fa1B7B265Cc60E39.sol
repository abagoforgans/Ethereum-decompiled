contract main {




// =====================  Runtime code  =====================


const name = 'CryptoBeauty'

const symbol = 'CRBT'

const getCurrentBalance = eth.balance(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
mapping of address ownerOf;
mapping of uint256 priceOf;
mapping of address approvedFor;
array of struct ownerName;

function implementsERC721() {
    return bool(uint8(stor0.field_160))
}

function totalSupply() {
    return stor5.length
}

function approvedFor(uint256 arg1) {
    return approvedFor[arg1]
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function priceOf(uint256 arg1) {
    return priceOf[arg1]
}

function getOwnerName(address arg1) {
    return ownerName[address(arg1)][0 len ownerName[address(arg1)].length].field_0
}

function _fallback() payable {
    revert
}

function tokenExists(uint256 arg1) {
    return (priceOf[arg1] > 0)
}

function enableERC721() {
    require address(stor0.field_0) == msg.sender
    Mask(96, 0, stor0.field_160) = 1
}

function setOwner(address arg1) {
    require address(stor0.field_0) == msg.sender
    address(stor0.field_0) = arg1
}

function withdrawAmount(uint256 arg1) {
    require address(stor0.field_0) == msg.sender
    call address(stor0.field_0) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() {
    require address(stor0.field_0) == msg.sender
    call address(stor0.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function listItem(uint256 arg1, uint256 arg2, address arg3) {
    require address(stor0.field_0) == msg.sender
    require arg2 > 0
    require not priceOf[arg1]
    require not ownerOf[arg1]
    ownerOf[arg1] = arg3
    priceOf[arg1] = arg2
    stor5.length++
    stor5[stor5.length] = arg1
}

function balanceOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 6
        if ownerOf[stor5[idx]] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor0.field_160)
    require msg.sender == ownerOf[arg2]
    require priceOf[arg2] > 0
    require ownerOf[arg2] == msg.sender
    require arg1
    require arg1 != this.address
    ownerOf[arg2] = arg1
    approvedFor[arg2] = 0
    emit Transfer(arg2, msg.sender, arg1);
}

function calculateDevCut(uint256 arg1) {
    if not arg1:
        return 0
    if arg1 < stor1:
        if arg1:
            if 8 * arg1 / arg1 == 8:
                return (8 * arg1 / 100)
    else:
        if arg1 < stor2:
            if arg1:
                if 7 * arg1 / arg1 == 7:
                    return (7 * arg1 / 100)
        else:
            if arg1 < stor3:
                if arg1:
                    if 6 * arg1 / arg1 == 6:
                        return (6 * arg1 / 100)
            else:
                if arg1:
                    if 5 * arg1 / arg1 == 5:
                        return (5 * arg1 / 100)
    revert
}

function calculateNextPrice(uint256 arg1) {
    if not arg1:
        return 0
    if arg1 < stor1:
        if arg1:
            if 200 * arg1 / arg1 == 200:
                return (200 * arg1 / 98)
    else:
        if arg1 < stor2:
            if arg1:
                if 135 * arg1 / arg1 == 135:
                    return (135 * arg1 / 97)
        else:
            if arg1 < stor3:
                if arg1:
                    if 125 * arg1 / arg1 == 125:
                        return (125 * arg1 / 96)
            else:
                if arg1 >= stor4:
                    if arg1:
                        if 115 * arg1 / arg1 == 115:
                            return (115 * arg1 / 95)
                else:
                    if arg1:
                        if 117 * arg1 / arg1 == 117:
                            return (117 * arg1 / 95)
    revert
}

function tokensOf(address arg1) {
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 6
        if ownerOf[stor5[idx]] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[7251 len 32 * s]
    idx = 0
    t = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 6
        if ownerOf[stor5[idx]] != arg1:
            idx = idx + 1
            t = t
            continue 
        require idx < stor5.length
        mem[0] = 5
        require t < s
        mem[(32 * t) + 128] = stor5[idx]
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 192 len floor32(s)] = mem[128 len floor32(s)]
    return Array(len=s, data=mem[128 len floor32(s)], mem[(32 * s) + floor32(s) + 192 len (32 * s) - floor32(s)])
}

function nextPriceOf(uint256 arg1) {
    if not priceOf[arg1]:
        return 0
    if priceOf[arg1] < stor1:
        if priceOf[arg1]:
            if 200 * priceOf[arg1] / priceOf[arg1] == 200:
                return (200 * priceOf[arg1] / 98)
    else:
        if priceOf[arg1] < stor2:
            if priceOf[arg1]:
                if 135 * priceOf[arg1] / priceOf[arg1] == 135:
                    return (135 * priceOf[arg1] / 97)
        else:
            if priceOf[arg1] < stor3:
                if priceOf[arg1]:
                    if 125 * priceOf[arg1] / priceOf[arg1] == 125:
                        return (125 * priceOf[arg1] / 96)
            else:
                if priceOf[arg1] >= stor4:
                    if priceOf[arg1]:
                        if 115 * priceOf[arg1] / priceOf[arg1] == 115:
                            return (115 * priceOf[arg1] / 95)
                else:
                    if priceOf[arg1]:
                        if 117 * priceOf[arg1] / priceOf[arg1] == 117:
                            return (117 * priceOf[arg1] / 95)
    revert
}

function allOf(uint256 arg1) {
    if not priceOf[arg1]:
        return ownerOf[arg1], priceOf[arg1], 0
    if priceOf[arg1] < stor1:
        if priceOf[arg1]:
            if 200 * priceOf[arg1] / priceOf[arg1] == 200:
                return ownerOf[arg1], priceOf[arg1], 200 * priceOf[arg1] / 98
    else:
        if priceOf[arg1] < stor2:
            if priceOf[arg1]:
                if 135 * priceOf[arg1] / priceOf[arg1] == 135:
                    return ownerOf[arg1], priceOf[arg1], 135 * priceOf[arg1] / 97
        else:
            if priceOf[arg1] < stor3:
                if priceOf[arg1]:
                    if 125 * priceOf[arg1] / priceOf[arg1] == 125:
                        return ownerOf[arg1], priceOf[arg1], 125 * priceOf[arg1] / 96
            else:
                if priceOf[arg1] >= stor4:
                    if priceOf[arg1]:
                        if 115 * priceOf[arg1] / priceOf[arg1] == 115:
                            return ownerOf[arg1], priceOf[arg1], 115 * priceOf[arg1] / 95
                else:
                    if priceOf[arg1]:
                        if 117 * priceOf[arg1] / priceOf[arg1] == 117:
                            return ownerOf[arg1], priceOf[arg1], 117 * priceOf[arg1] / 95
    revert
}

function setOwnerName(address arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 192 len arg2.length % 32] = mem[ceil32(arg2.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    _87 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    mem[0] = arg1
    mem[32] = 9
    mem[arg2.length + ceil32(arg2.length) + 192] = ownerName[address(arg1)].field_0
    idx = arg2.length + ceil32(arg2.length) + 192
    s = 0
    while arg2.length + ceil32(arg2.length) + ownerName[address(arg1)].length + 160 > idx:
        mem[idx + 32] = ownerName[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[arg2.length + ceil32(arg2.length) + 160] = ownerName[address(arg1)].length
    mem[64] = arg2.length + ceil32(arg2.length) + ownerName[address(arg1)].length + 192
    mem[arg2.length + ceil32(arg2.length) + ownerName[address(arg1)].length + 192 len floor32(ownerName[address(arg1)].length)] = mem[arg2.length + ceil32(arg2.length) + 192 len floor32(ownerName[address(arg1)].length)]
    mem[arg2.length + ceil32(arg2.length) + ownerName[address(arg1)].length + floor32(ownerName[address(arg1)].length) + -ownerName[address(arg1)].length % 32 + 224 len ownerName[address(arg1)].length % 32] = mem[arg2.length + ceil32(arg2.length) + floor32(ownerName[address(arg1)].length) + -ownerName[address(arg1)].length % 32 + 224 len ownerName[address(arg1)].length % 32]
    require sha3(mem[arg2.length + ceil32(arg2.length) + ownerName[address(arg1)].length + 192 len ownerName[address(arg1)].length]) != _87
    ownerName[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function buy(uint256 arg1) payable {
    require priceOf[arg1] > 0
    require ownerOf[arg1]
    require msg.value >= priceOf[arg1]
    require ownerOf[arg1] != msg.sender
    require ext_code.size(msg.sender) <= 0
    require msg.sender
    require priceOf[arg1] <= msg.value
    require priceOf[arg1] > 0
    require ownerOf[arg1] == ownerOf[arg1]
    require msg.sender
    require this.address != msg.sender
    ownerOf[arg1] = msg.sender
    approvedFor[arg1] = 0
    emit Transfer(arg1, ownerOf[arg1], msg.sender);
    if priceOf[arg1] < stor1:
        if not priceOf[arg1]:
            priceOf[arg1] = 0
        else:
            require priceOf[arg1]
            require 200 * priceOf[arg1] / priceOf[arg1] == 200
            priceOf[arg1] = 200 * priceOf[arg1] / 98
    else:
        if priceOf[arg1] < stor2:
            if not priceOf[arg1]:
                priceOf[arg1] = 0
            else:
                require priceOf[arg1]
                require 135 * priceOf[arg1] / priceOf[arg1] == 135
                priceOf[arg1] = 135 * priceOf[arg1] / 97
        else:
            if priceOf[arg1] < stor3:
                if not priceOf[arg1]:
                    priceOf[arg1] = 0
                else:
                    require priceOf[arg1]
                    require 125 * priceOf[arg1] / priceOf[arg1] == 125
                    priceOf[arg1] = 125 * priceOf[arg1] / 96
            else:
                if priceOf[arg1] >= stor4:
                    if not priceOf[arg1]:
                        priceOf[arg1] = 0
                    else:
                        require priceOf[arg1]
                        require 115 * priceOf[arg1] / priceOf[arg1] == 115
                        priceOf[arg1] = 115 * priceOf[arg1] / 95
                else:
                    if not priceOf[arg1]:
                        priceOf[arg1] = 0
                    else:
                        require priceOf[arg1]
                        require 117 * priceOf[arg1] / priceOf[arg1] == 117
                        priceOf[arg1] = 117 * priceOf[arg1] / 95
    emit Bought(priceOf[arg1], arg1, msg.sender);
    emit Sold(priceOf[arg1], arg1, ownerOf[arg1]);
    if priceOf[arg1] < stor1:
        if not priceOf[arg1]:
            require 0 <= priceOf[arg1]
            call ownerOf[arg1] with:
               value priceOf[arg1] wei
                 gas 2300 * is_zero(value) wei
        else:
            require priceOf[arg1]
            require 8 * priceOf[arg1] / priceOf[arg1] == 8
            require 8 * priceOf[arg1] / 100 <= priceOf[arg1]
            call ownerOf[arg1] with:
               value priceOf[arg1] - (8 * priceOf[arg1] / 100) wei
                 gas 2300 * is_zero(value) wei
    else:
        if priceOf[arg1] < stor2:
            if not priceOf[arg1]:
                require 0 <= priceOf[arg1]
                call ownerOf[arg1] with:
                   value priceOf[arg1] wei
                     gas 2300 * is_zero(value) wei
            else:
                require priceOf[arg1]
                require 7 * priceOf[arg1] / priceOf[arg1] == 7
                require 7 * priceOf[arg1] / 100 <= priceOf[arg1]
                call ownerOf[arg1] with:
                   value priceOf[arg1] - (7 * priceOf[arg1] / 100) wei
                     gas 2300 * is_zero(value) wei
        else:
            if priceOf[arg1] < stor3:
                if not priceOf[arg1]:
                    require 0 <= priceOf[arg1]
                    call ownerOf[arg1] with:
                       value priceOf[arg1] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require priceOf[arg1]
                    require 6 * priceOf[arg1] / priceOf[arg1] == 6
                    require 6 * priceOf[arg1] / 100 <= priceOf[arg1]
                    call ownerOf[arg1] with:
                       value priceOf[arg1] - (6 * priceOf[arg1] / 100) wei
                         gas 2300 * is_zero(value) wei
            else:
                if not priceOf[arg1]:
                    require 0 <= priceOf[arg1]
                    call ownerOf[arg1] with:
                       value priceOf[arg1] wei
                         gas 2300 * is_zero(value) wei
                else:
                    require priceOf[arg1]
                    require 5 * priceOf[arg1] / priceOf[arg1] == 5
                    require 5 * priceOf[arg1] / 100 <= priceOf[arg1]
                    call ownerOf[arg1] with:
                       value priceOf[arg1] - (5 * priceOf[arg1] / 100) wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value - priceOf[arg1] > 0:
        call msg.sender with:
           value msg.value - priceOf[arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
