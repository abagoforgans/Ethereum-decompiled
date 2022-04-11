contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - getSandwichInfo(uint256 arg1)
#  - getMenu()
#
address stor0;
array of uint256 stor1;
array of uint256 stor5;
array of uint256 stor6;
array of struct cartItemInfo;
mapping of uint256 cartSubtotal;

function getCartSubtotal(address arg1) {
    return cartSubtotal[address(arg1)]
}

function getCartItemInfo(address arg1, uint256 arg2) {
    return stor[(3 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'cartItemInfo', 31)) + 1][0 len stor[(3 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'cartItemInfo', 31)) + 1].length].field_0
}

function cart(address arg1, uint256 arg2) {
    require arg2 < cartItemInfo[arg1].field_0
    mem[224] = stor[sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1)].field_0
    idx = 224
    s = 0
    while stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1].length + 224 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return cartItemInfo[arg1][arg2].field_0, 
           Array(len=stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1].length, data=mem[224 len stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1].length + (floor32(stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1].length - 1) + -stor[(3 * arg2) + ('map', ('param', 'arg1'), ('name', 'cartItemInfo', 31)) + 1].length + 32 % 32)]),
           cartItemInfo[arg1][arg2].field_512
}

function getCartLength(address arg1) {
    return cartItemInfo[address(arg1)].field_0
}

function subtotal(address arg1) {
    return cartSubtotal[arg1]
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setQuantity(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    require arg1 < 5
    stor6[arg1] = arg2
}

function transferFromRegister(address arg1, uint256 arg2) {
    require msg.sender == stor0
    if arg2 <= eth.balance(this.address):
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function emptyCart() {
    cartItemInfo[address(msg.sender)].field_0 = 0
    mem[0] = sha3(address(msg.sender), 31)
    idx = 0
    while sha3(sha3(address(msg.sender), 31)) + (3 * cartItemInfo[address(msg.sender)].field_0) > idx + sha3(mem[0]):
        stor[idx + sha3(mem[0])] = 0
        stor[idx + sha3(mem[0]) + 1] = 0
        if 31 < stor[idx + sha3(mem[0]) + 1].length:
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor[idx + sha3(mem[0]) + 2] = 0
        idx = idx + 3
        continue 
    cartSubtotal[address(msg.sender)] = 0
}

function addToCart(uint256 arg1, string arg2) {
    require arg1 < 5
    if stor6[arg1] <= 0:
        return cartItemInfo[address(msg.sender)].field_0
    require arg1 < 5
    cartSubtotal[address(msg.sender)] += stor5[arg1]
    emit testSandwichOrder(arg1, msg.sender);
    cartItemInfo[address(msg.sender)].field_0++
    if not cartItemInfo[address(msg.sender)].field_0 <= cartItemInfo[address(msg.sender)].field_0 + 1:
        mem[0] = sha3(address(msg.sender), 31)
        idx = (3 * cartItemInfo[address(msg.sender)].field_0) + 3
        while sha3(sha3(address(msg.sender), 31)) + (3 * cartItemInfo[address(msg.sender)].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            idx = idx + 3
            continue 
    cartItemInfo[address(msg.sender)][cartItemInfo[address(msg.sender)].field_0].field_0 = arg1
    stor[sha3((3 * cartItemInfo[address(msg.sender)].field_0) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    cartItemInfo[address(msg.sender)][cartItemInfo[address(msg.sender)].field_0].field_512 = stor5[arg1]
    return (cartItemInfo[address(msg.sender)].field_0 + 1)
}

function checkoutCart(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.value >= cartSubtotal[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 31
    idx = 0
    while idx < cartItemInfo[address(msg.sender)].field_0:
        require idx < cartItemInfo[address(msg.sender)].field_0
        require cartItemInfo[address(msg.sender)][idx].field_0 < 5
        require stor6[stor31[address(msg.sender)][idx].field_0] > 0
        require idx < cartItemInfo[address(msg.sender)].field_0
        require cartItemInfo[address(msg.sender)][idx].field_0 < 5
        require idx < cartItemInfo[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 31)
        _96 = mem[64]
        mem[mem[64] + 32] = msg.sender
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _98 = mem[96]
        s = 0
        while s < mem[96]:
            mem[mem[64] + s + 160] = mem[s + 128]
            mem[0] = msg.sender
            mem[32] = 31
            s = s + 32
            continue 
        if not mem[96] % 32:
            mem[_96 + 64] = mem[96] + 160
            mem[_98 + _96 + 160] = stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length
            mem[0] = (6 * cartItemInfo[address(msg.sender)][idx].field_0) + 2
            mem[_98 + _96 + 192] = stor[sha3((6 * stor31[address(msg.sender)][idx].field_0) + 2)]
            s = _98 + _96 + 192
            t = sha3(mem[0])
            while _98 + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + 192 > s + 32:
                mem[0] = msg.sender
                mem[32] = 31
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_96 + 96] = _98 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + 192
            mem[_98 + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + 192] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length
            mem[_98 + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + 224] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1)].field_0
            t = _98 + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + 224
            u = sha3((3 * idx) + sha3(sha3(address(msg.sender), 31)) + 1)
            while _98 + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length + 224 > t + 32:
                mem[0] = msg.sender
                mem[32] = 31
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            emit NewSandwichTicket(string rg1, address rg2, string rg3, string rg4):
                                   mem[mem[64] len _98 + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length + (t + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + -(s + -_98 + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 160 % 32) + -stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length - 192 % 32) + -mem[64] + 224],
        else:
            mem[floor32(mem[96]) + _96 + 160] = mem[floor32(mem[96]) + _96 + -(mem[96] % 32) + 192 len mem[96] % 32]
            mem[_96 + 64] = floor32(mem[96]) + 192
            mem[floor32(_98) + _96 + 192] = stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length
            mem[0] = (6 * cartItemInfo[address(msg.sender)][idx].field_0) + 2
            mem[floor32(_98) + _96 + 224] = stor[sha3((6 * stor31[address(msg.sender)][idx].field_0) + 2)]
            s = floor32(_98) + _96 + 224
            t = sha3(mem[0])
            while floor32(_98) + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + 224 > s + 32:
                mem[0] = msg.sender
                mem[32] = 31
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_96 + 96] = floor32(_98) + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + 224
            mem[floor32(_98) + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + 224] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length
            mem[floor32(_98) + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + 256] = stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1)].field_0
            t = floor32(_98) + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + 256
            u = sha3((3 * idx) + sha3(sha3(address(msg.sender), 31)) + 1)
            while floor32(_98) + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length + 256 > t + 32:
                mem[0] = msg.sender
                mem[32] = 31
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            emit NewSandwichTicket(string rg1, address rg2, string rg3, string rg4):
                                   mem[mem[64] len floor32(_98) + _96 + stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + (s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length + (t + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length + -(s + -floor32(_98) + -_96 + -stor[(6 * stor31[address(msg.sender)][idx].field_0) + 2].length - 192 % 32) + -stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'cartItemInfo', 31)) + 1].length - 224 % 32) + -mem[64] + 256],
        require idx < cartItemInfo[address(msg.sender)].field_0
        require cartItemInfo[address(msg.sender)][idx].field_0 < 5
        stor6[stor31[address(msg.sender)][idx].field_0]--
        mem[0] = msg.sender
        mem[32] = 31
        idx = idx + 1
        continue 
    cartSubtotal[address(msg.sender)] = 0
    cartItemInfo[address(msg.sender)].field_0 = 0
    mem[0] = sha3(address(msg.sender), 31)
    idx = 0
    while sha3(sha3(address(msg.sender), 31)) + (3 * cartItemInfo[address(msg.sender)].field_0) > idx + sha3(mem[0]):
        stor[idx + sha3(mem[0])] = 0
        stor[idx + sha3(mem[0]) + 1] = 0
        if 31 < stor[idx + sha3(mem[0]) + 1].length:
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor[idx + sha3(mem[0]) + 2] = 0
        idx = idx + 3
        continue 
    return 0
}



}
