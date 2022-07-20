contract main {




// =====================  Runtime code  =====================


const name = 'Goo Item'

const symbol = 'GOOITEM'


function getApproved(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 3)))
}

function tokenOwner(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2)))
}

function itemList(uint256 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 1))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 1)))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 1))))
}

function getItemRarity(uint256 arg1) {
    return ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 1))))
}

function exists(uint256 arg1) {
    return bool(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))))
}

function tokenItems(uint256 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6)))
}

function ownerOf(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2)))
}

function balanceOf(address arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
}

function ownedTokensIndex(uint256 arg1) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5)))
}

function unitEquippedItems(address arg1, uint256 arg2) {
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('param', 'arg1'), 0)))))
}

function tokenApprovals(uint256 arg1) {
    return ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 3)))
}

function getEquippedItemId(address arg1, uint256 arg2) {
    return ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg2'), ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 0))))), 6)))
}

function ownedTokens(address arg1, uint256 arg2) {
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 4)))
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 4))), ('param', 'arg2')))
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (('storage', 256, 0, 8) - ('storage', 256, 0, 9))
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == ('storage', 160, 0, 10)
    uint8(stor[sha3(address(arg1), 7)]) = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require msg.sender == ('storage', 160, 0, ('sha3', ('data', ('param', 'arg2'), 2)))
    address(stor[sha3(arg2, 3)]) = arg1
    emit Approval(msg.sender, address(arg1), arg2);
}

function mintItem(uint256 arg1, address arg2) {
    require ('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))
    require ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 1))) == arg1
    uint256(stor[sha3(('storage', 256, 0, 8), 6)]) = arg1
    require not ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, 8), 2)))
    address(stor[sha3(('storage', 256, 0, 8), 2)]) = arg2
    uint256(stor[sha3(('storage', 256, 0, 8), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4)))
    uint256(stor[sha3(address(arg2), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + sha3(sha3(address(arg2), 4))]) = ('storage', 256, 0, 8)
    emit Transfer(0, address(arg2), ('storage', 256, 0, 8));
    uint256(stor[8]) = ('storage', 256, 0, 8) + 1
}

function addItem(uint256 arg1, uint256 arg2, uint256 arg3, uint32[8] arg4) {
    require ('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))
    mem[224 len 256] = call.data[100 len 256]
    uint256(stor[sha3(arg1, 1)]) = arg1
    uint256(stor[sha3(arg1, 1) + 1]) = arg2
    uint256(stor[sha3(arg1, 1) + 2]) = arg3
    s = 0
    idx = 224
    while 480 > idx:
        uint256(stor[sha3(arg1, 1) + 3]) = mem[idx + 28 len 4] * 256^s or !(test266151307() * 256^s) and ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 1))))
        s = s + (4 * -s + 7 / 32) + (-1 * s * s + 7 / 32) + 4
        idx = idx + 32
        continue 
    idx = 32
    s = sha3(arg1, 1) + 3
    while idx:
        uint256(stor[s]) = !(test266151307() * 256^idx) and ('storage', 256, 0, ('var', 1))
        idx = idx + (4 * -idx + 7 / 32) + (-1 * idx * idx + 7 / 32) + 4
        s = (idx + 7 / 32) + s
        continue 
    idx = (Mask(252, 2, None - 27) + 39 / 32 * Mask(254, 0, None - 27) >> 2) + 3
    while 4 > idx:
        uint32(stor[idx + sha3(arg1, 1)]) = 0
        idx = idx + 1
        continue 
}

function unequipSingle(uint256 arg1) {
    require ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', 'msg.sender', 0))))) > 0
    require not ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', 'msg.sender', 0))))), 2)))
    idx = 352
    s = 0
    while 608 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[708] = mem[412 len 4]
    mem[740] = mem[444 len 4]
    mem[772] = mem[476 len 4]
    mem[804] = mem[508 len 4]
    mem[836] = mem[540 len 4]
    mem[868] = mem[572 len 4]
    mem[900] = mem[604 len 4]
    require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
    call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.0xa442ed60 with:
         gas gas_remaining wei
        args msg.sender, arg1, ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1)))), mem[708 len 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', 'msg.sender', 0))))), 2)]) = msg.sender or Mask(96, 160, ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), ('sha3', ('data', 'msg.sender', 0))))), 2))))
    uint256(stor[sha3(arg1, sha3(msg.sender, 0))]) = 0
}

function tokensOf(address arg1) {
    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 128] = 32
        mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 160] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
        mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 192 len floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))] = mem[128 len floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))]
        return memory
          from (32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 128
           len (96 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 64
    mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))
    idx = 128
    s = 0
    while (32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 96 > idx:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 192 len floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))] = mem[128 len floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))]
    return Array(len=('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), data=mem[128 len floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))], mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) + 192 len (32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) - floor32(('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))]), 
}

function itemsOf(address arg1) {
    idx = 0
    s = 0
    while idx < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        require idx < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
        mem[0] = ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
        mem[32] = 2
        if ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))), 2))) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        mem[128 len 32 * s] = code.data[6752 len 32 * s]
    t = 0
    t = 0
    idx = 0
    while idx < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        require idx < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
        mem[0] = ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
        mem[32] = 2
        if arg1 != ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))), 2))):
            t = ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
            t = t
            idx = idx + 1
            continue 
        require t < s
        mem[(32 * t) + 128] = ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
        t = ('storage', 256, 0, ('add', ('var', 0), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
        t = t + 1
        idx = idx + 1
        continue 
    mem[(32 * s) + 128] = s
    if s:
        mem[(32 * s) + 160 len 32 * s] = code.data[6752 len 32 * s]
    t = 0
    while t < s:
        require t < s
        mem[0] = mem[(32 * t) + 128]
        mem[32] = 6
        require t < s
        mem[(32 * s) + (32 * t) + 160] = ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 2))), 32)), 6)))
        t = t + 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = s
    mem[(64 * s) + 256 len floor32(s)] = mem[128 len floor32(s)]
    mem[(64 * s) + 192] = (32 * s) + 96
    mem[(98 * s) + 256] = s
    mem[(98 * s) + 288 len floor32(s)] = mem[(32 * s) + 160 len floor32(s)]
    return memory
      from (64 * s) + 160
       len (162 * s) + 128
}

function burn(uint256 arg1) {
    if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))) != msg.sender:
        require ('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))) == ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2)))
    address(stor[sha3(arg1, 2)]) = 0
    require 1 <= ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5))) < ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5))) + sha3(sha3(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))]) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))), ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)))))
    require ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) + sha3(sha3(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)) - 1]) = 0
    uint256(stor[sha3(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) - 1
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) > ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) - 1:
        idx = ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) - 1
        while ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))) > idx:
            uint256(stor[idx + sha3(sha3(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))]) = 0
            idx = idx + 1
            continue 
    uint256(stor[sha3(arg1, 5)]) = 0
    uint256(stor[sha3(('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))), ('storage', 256, 0, ('sha3', ('data', ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 4))))), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5)))
    address(stor[sha3(arg1, 3)]) = 0
    uint256(stor[sha3(arg1, 6)]) = 0
    emit Transfer(('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2))), 0, arg1);
    uint256(stor[9]) = ('storage', 256, 0, 9) + 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 3))) != msg.sender:
        if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) != msg.sender:
            require ('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) == arg1
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) == arg1
    address(stor[sha3(arg3, 2)]) = 0
    require 1 <= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5))) + sha3(sha3(address(arg1), 4))]) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
    require ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) + sha3(sha3(address(arg1), 4)) - 1]) = 0
    uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1:
        idx = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1
        while ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) > idx:
            uint256(stor[idx + sha3(sha3(address(arg1), 4))]) = 0
            idx = idx + 1
            continue 
    uint256(stor[sha3(arg3, 5)]) = 0
    uint256(stor[sha3(('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5)))
    require not ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2)))
    address(stor[sha3(arg3, 2)]) = arg2
    uint256(stor[sha3(arg3, 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4)))
    uint256(stor[sha3(address(arg2), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + sha3(sha3(address(arg2), 4))]) = arg3
    address(stor[sha3(arg3, 3)]) = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 3))) != msg.sender:
        if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) != msg.sender:
            require ('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) == arg1
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) == arg1
    address(stor[sha3(arg3, 2)]) = 0
    require 1 <= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5))) + sha3(sha3(address(arg1), 4))]) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
    require ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) + sha3(sha3(address(arg1), 4)) - 1]) = 0
    uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1:
        idx = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1
        while ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) > idx:
            uint256(stor[idx + sha3(sha3(address(arg1), 4))]) = 0
            idx = idx + 1
            continue 
    uint256(stor[sha3(arg3, 5)]) = 0
    uint256(stor[sha3(('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5)))
    require not ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2)))
    address(stor[sha3(arg3, 2)]) = arg2
    uint256(stor[sha3(arg3, 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4)))
    uint256(stor[sha3(address(arg2), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + sha3(sha3(address(arg2), 4))]) = arg3
    address(stor[sha3(arg3, 3)]) = 0
    emit Transfer(address(arg1), address(arg2), arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)')) == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 3))) != msg.sender:
        if ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) != msg.sender:
            require ('storage', 8, 0, ('sha3', ('data', 'msg.sender', 7)))
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) == arg1
    require ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2))) == arg1
    address(stor[sha3(arg3, 2)]) = 0
    require 1 <= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    require ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5))) < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5))) + sha3(sha3(address(arg1), 4))]) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))))
    require ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1 < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) + sha3(sha3(address(arg1), 4)) - 1]) = 0
    uint256(stor[sha3(address(arg1), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) > ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1:
        idx = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) - 1
        while ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))) > idx:
            uint256(stor[idx + sha3(sha3(address(arg1), 4))]) = 0
            idx = idx + 1
            continue 
    uint256(stor[sha3(arg3, 5)]) = 0
    uint256(stor[sha3(('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('param', 'arg3'), 5)))
    require not ('storage', 160, 0, ('sha3', ('data', ('param', 'arg3'), 2)))
    address(stor[sha3(arg3, 2)]) = arg2
    uint256(stor[sha3(arg3, 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4)))
    uint256(stor[sha3(address(arg2), 4)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + 1
    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg2')), 4))) + sha3(sha3(address(arg2), 4))]) = arg3
    address(stor[sha3(arg3, 3)]) = 0
    emit Transfer(address(arg1), address(arg2), arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, sha3('onERC721Received(address,address', ',uint256,bytes)')) == Mask(32, 224, ext_call.return_data[0])
}

function unequipMultipleUnits(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < arg1.length:
        _23 = mem[64]
        mem[64] = mem[64] + 256
        mem[_23 len 256] = code.data[6752 len 256]
        require ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))) > 0
        require not ('storage', 160, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 2)))
        mem[0] = ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 6)))
        mem[32] = 1
        _31 = mem[64]
        mem[64] = mem[64] + 256
        mem[_31] = ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
        s = _31
        t = 0
        while _31 + 256 > s + 32:
            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
            s = s + 32
            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
            continue 
        _46 = mem[_31 + 32]
        _47 = mem[_31 + 64]
        _48 = mem[_31 + 96]
        _49 = mem[_31 + 128]
        _50 = mem[_31 + 160]
        _51 = mem[_31 + 192]
        _52 = mem[_31 + 224]
        mem[mem[64]] = 0xa442ed6000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 68] = ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
        mem[mem[64] + 100] = uint32(_46)
        mem[mem[64] + 132] = uint32(_47)
        mem[mem[64] + 164] = uint32(_48)
        mem[mem[64] + 196] = uint32(_49)
        mem[mem[64] + 228] = uint32(_50)
        mem[mem[64] + 260] = uint32(_51)
        mem[mem[64] + 292] = uint32(_52)
        require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
        call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.0xa442ed60 with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + arg1 + 36)], ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1)))), _46 << 224, _47 << 224, _48 << 224, _49 << 224, _50 << 224, _51 << 224, uint32(_52)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 2)]) = msg.sender or Mask(96, 160, ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), ('sha3', ('data', 'msg.sender', 0))))), 2))))
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = sha3(msg.sender, 0)
        uint256(stor[sha3(cd[((32 * idx) + arg1 + 36)], sha3(msg.sender, 0))]) = 0
        idx = idx + 1
        continue 
}

function equipSingle(uint256 arg1) {
    require msg.sender == ('storage', 160, 0, ('sha3', ('data', ('param', 'arg1'), 2)))
    address(stor[sha3(arg1, 2)]) = 0
    address(stor[sha3(arg1, 3)]) = 0
    idx = 352
    s = 0
    while 608 > idx + 32:
        mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1))))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    if ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))) != 0:
        if arg1 != ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))):
            idx = 932
            s = 0
            while 1188 > idx + 32:
                mem[idx + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32)))), ('var', 1), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 1))), 32), ('var', 1)))), ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
                idx = idx + 32
                s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
                continue 
            require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
            call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.0x454764ac with:
                 gas gas_remaining wei
                args msg.sender, ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), mem[384 len 224] >> 1792, ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1)))), mem[964 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 2)]) = msg.sender or Mask(96, 160, ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 2))))
    else:
        mem[708] = mem[412 len 4]
        mem[740] = mem[444 len 4]
        mem[772] = mem[476 len 4]
        mem[804] = mem[508 len 4]
        mem[836] = mem[540 len 4]
        mem[868] = mem[572 len 4]
        mem[900] = mem[604 len 4]
        require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
        call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.0xa9ed5b43 with:
             gas gas_remaining wei
            args msg.sender, ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), mem[708 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    uint256(stor[sha3(('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6))), 1)))), sha3(msg.sender, 0))]) = arg1
}

function equipMultipleTokens(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < arg1.length:
        _28 = mem[64]
        mem[64] = mem[64] + 256
        mem[_28 len 256] = code.data[6752 len 256]
        require msg.sender == ('storage', 160, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 2)))
        address(stor[sha3(cd[((32 * idx) + arg1 + 36)], 2)]) = 0
        address(stor[sha3(cd[((32 * idx) + arg1 + 36)], 3)]) = 0
        mem[0] = ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))
        mem[32] = 1
        _36 = mem[64]
        mem[64] = mem[64] + 256
        mem[_36] = ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1))))
        s = _36
        t = 0
        while _36 + 256 > s + 32:
            mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1))))
            s = s + 32
            t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
            continue 
        if ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))) != 0:
            if cd[((32 * idx) + arg1 + 36)] != ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))):
                mem[0] = ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 6)))
                mem[32] = 1
                _69 = mem[64]
                mem[mem[64]] = 0x454764ac00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1))))
                s = 0
                while s < 256:
                    mem[s + _69 + 68] = mem[s + _36]
                    s = s + 32
                    continue 
                mem[_69 + 324] = ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
                s = _69 + 324
                t = 0
                while _69 + 580 > s + 32:
                    mem[s + 32] = ('storage', 32, ('mask_shl', 253, 0, 3, ('add', ('mask_shl', 254, 0, 2, ('add', 1, ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32)))), ('var', 2), ('mul', -1, ('div', ('mask', 256, 0, ('add', 7, ('var', 2))), 32), ('var', 2)))), ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 6))), 1))))
                    s = s + 32
                    t = (4 * -(t + 7 / 32) + 1) + t - (t + 7 / 32 * t)
                    continue 
                require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
                call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _69 + -mem[64] + 576]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint256(stor[sha3(('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 2)]) = msg.sender or Mask(96, 160, ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('sha3', ('data', 'msg.sender', 0))))), 2))))
        else:
            _56 = mem[_36 + 32]
            _57 = mem[_36 + 64]
            _58 = mem[_36 + 96]
            _59 = mem[_36 + 128]
            _60 = mem[_36 + 160]
            _61 = mem[_36 + 192]
            _62 = mem[_36 + 224]
            mem[mem[64]] = 0xa9ed5b4300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1))))
            mem[mem[64] + 68] = ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1))))
            mem[mem[64] + 100] = uint32(_56)
            mem[mem[64] + 132] = uint32(_57)
            mem[mem[64] + 164] = uint32(_58)
            mem[mem[64] + 196] = uint32(_59)
            mem[mem[64] + 228] = uint32(_60)
            mem[mem[64] + 260] = uint32(_61)
            mem[mem[64] + 292] = uint32(_62)
            require ext_code.size(0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e)
            call 0xf936aa9e1f22c915abf4a66a5a6e94eb8716ba5e.0xa9ed5b43 with:
                 gas gas_remaining wei
                args msg.sender, ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), ('storage', 32, 0, ('add', 3, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), _56 << 224, _57 << 224, _58 << 224, _59 << 224, _60 << 224, _61 << 224, uint32(_62)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[0] = ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1))))
        mem[32] = sha3(msg.sender, 0)
        uint256(stor[sha3(('storage', 256, 0, ('add', 1, ('sha3', ('data', ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))), 1)))), sha3(msg.sender, 0))]) = cd[((32 * idx) + arg1 + 36)]
        idx = idx + 1
        continue 
}



}
