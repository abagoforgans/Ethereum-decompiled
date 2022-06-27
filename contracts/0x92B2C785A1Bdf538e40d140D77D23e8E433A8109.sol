contract main {




// =====================  Runtime code  =====================


const sub_11f1781b(?) = (2 * 3600)

const getContractAddress = address(this.address)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of struct stor1;
array of address stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
mapping of address stor99;

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function removeFromWhiteList(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    stor5[address(arg1)] = 0
    emit 0xa45794fa: 1, block.timestamp, arg1
    return 1
}

function removeFromBlackList(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    uint8(stor4[address(arg1)]) = 0
    emit 0x36f63ce5: 1, block.timestamp, arg1
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    if not arg1:
        revert with 0, 'New Owner's Address is Required'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addToBlackList(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    if stor5[address(arg1)]:
        stor5[address(arg1)] = 0
    uint8(stor4[address(arg1)]) = 1
    emit 0x36f63ce5: 1, block.timestamp, arg1
    return 1
}

function addToWhiteList(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    if uint8(stor4[address(arg1)]):
        uint8(stor4[address(arg1)]) = 0
    stor5[address(arg1)] = 1
    emit 0x5938dc87: 1, block.timestamp, arg1
    return 0
}

function sub_0a1b8e80(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if not address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        revert with 0, 'The token has not been registered!'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_69f667ed(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        revert with 0, 'Only Owner Can Do This'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]):
        revert with 0, 'The token has registered!'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = arg2
    stor3.length++
    uint256(stor3[stor3.length][]) = Array(len=arg1.length, data=arg1[all])
    emit 0x9469bdfb: address(arg2), Array(len=arg1.length, data=arg1[all]), block.timestamp, owner
    return 1
}

function sub_758ebc87(?) {
    mem[128 len arg1.length] = arg1[all]
    if tx.origin != msg.sender:
        revert with 0, 'Human Only'
    if ext_code.size(msg.sender):
        revert with 0, 'Addresses not owned by human are forbidden'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32]
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256)]):
        revert with 0, 'Blocked User Is Not Allowed'
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0)]):
        revert with 0, 'Blocked User Is Not Allowed'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length])
    _189 = sha3(sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]), 1)
    if not uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1800):
        revert with 0, 'No Order Existed'
    if uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) >= 2:
        revert with 0, 'Wrong Order Status'
    if not uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792):
        revert with 0, 'Wrong Order Status'
    if owner != msg.sender:
        if address(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_256) != msg.sender:
            revert with 0, 'Only Buyer Or Owner Can Set Paid!'
    uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) = 3
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = address(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_768)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256] = uint256(stor1[mem[0]].field_1024)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288] = uint8(stor1[mem[0]].field_1792)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 352] = stor1[mem[0]][2].length
    mem[0] = sha3(mem[0], 1) + 2
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = uint256(stor[sha3(_189 + 2)])
    idx = (2 * arg1.length) + ceil32(arg1.length) + 384
    s = 0
    while (2 * arg1.length) + ceil32(arg1.length) + stor[_189 + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x44e5bf53: 160, mem[(2 * arg1.length) + ceil32(arg1.length) + 224 len 96], block.timestamp, mem[(2 * arg1.length) + ceil32(arg1.length) + 352 len stor[_189 + 2].length + (floor32(stor[_189 + 2].length - 1) + -stor[_189 + 2].length + 32 % 32) + 32], msg.sender, address(stor[_189])
}

function sub_3ace041a(?) {
    mem[128 len arg1.length] = arg1[all]
    if tx.origin != msg.sender:
        revert with 0, 'Human Only'
    if ext_code.size(msg.sender):
        revert with 0, 'Addresses not owned by human are forbidden'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256)]):
        revert with 0, 'Blocked User Is Not Allowed'
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0)]):
        revert with 0, 'Blocked User Is Not Allowed'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length])
    _285 = sha3(sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]), 1)
    if not uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1800):
        revert with 0, 'No order existed'
    if uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) >= 4:
        revert with 0, 'Wrong Order Status'
    if uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) <= 2:
        revert with 0, 'Wrong Order Status'
    if owner != msg.sender:
        if address(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_0) != msg.sender:
            revert with 0, 'Only Seller Or Owner Can Confirm!'
    uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) = 7
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = address(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_768)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256] = uint256(stor1[mem[0]].field_1024)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288] = uint8(stor1[mem[0]].field_1792)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 352] = stor1[mem[0]][2].length
    mem[0] = sha3(mem[0], 1) + 2
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = uint256(stor[sha3(_285 + 2)])
    idx = (2 * arg1.length) + ceil32(arg1.length) + 384
    s = 0
    while (2 * arg1.length) + ceil32(arg1.length) + stor[_285 + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xbfa92a21: 160, mem[(2 * arg1.length) + ceil32(arg1.length) + 224 len 96], block.timestamp, mem[(2 * arg1.length) + ceil32(arg1.length) + 352 len stor[_285 + 2].length + (floor32(stor[_285 + 2].length - 1) + -stor[_285 + 2].length + 32 % 32) + 32], msg.sender, address(stor1[_285].field_0)
    require ext_code.size(address(stor3[_285]))
    call address(stor3[_285]).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor1[_285].field_0), uint256(stor4[_285])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cancelOrder(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if tx.origin != msg.sender:
        revert with 0, 'Human Only'
    if ext_code.size(msg.sender):
        revert with 0, 'Addresses not owned by human are forbidden'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256)]):
        revert with 0, 'Blocked User Is Not Allowed'
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0)]):
        revert with 0, 'Blocked User Is Not Allowed'
    mem[arg1.length + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length])
    _285 = sha3(sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]), 1)
    if not uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1800):
        revert with 0, 'No Order Existed'
    if uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) >= 2:
        revert with 0, 'Wrong order status'
    if not uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792):
        revert with 0, 'Wrong order status'
    if owner != msg.sender:
        if address(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_256) != msg.sender:
            revert with 0, 'Only Owner Or Buyer Can Cancel Order'
    uint256(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1024) = 0
    uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_1792) = 0
    mem[(2 * arg1.length) + ceil32(arg1.length) + 224] = address(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + 192 len arg1.length]].field_768)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 256] = uint256(stor1[mem[0]].field_1024)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288] = uint8(stor1[mem[0]].field_1792)
    mem[(2 * arg1.length) + ceil32(arg1.length) + 352] = stor1[mem[0]][2].length
    mem[0] = sha3(mem[0], 1) + 2
    mem[(2 * arg1.length) + ceil32(arg1.length) + 384] = uint256(stor[sha3(_285 + 2)])
    idx = (2 * arg1.length) + ceil32(arg1.length) + 384
    s = 0
    while (2 * arg1.length) + ceil32(arg1.length) + stor[_285 + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xcf42a525: 160, mem[(2 * arg1.length) + ceil32(arg1.length) + 224 len 96], block.timestamp, mem[(2 * arg1.length) + ceil32(arg1.length) + 352 len stor[_285 + 2].length + (floor32(stor[_285 + 2].length - 1) + -stor[_285 + 2].length + 32 % 32) + 32], msg.sender, address(stor[_285])
    require ext_code.size(address(stor3[_285]))
    call address(stor3[_285]).0xa9059cbb with:
         gas gas_remaining wei
        args address(stor[_285]), uint256(stor4[_285])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_08361780(?) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32]
    _265 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    if msg.sender == address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0):
        mem[64] = arg1.length + ceil32(arg1.length) + ceil32(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][2].length) + 192
        mem[arg1.length + ceil32(arg1.length) + 160] = stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][2].length
        mem[arg1.length + ceil32(arg1.length) + 192] = uint256(stor1[_265][2].field_0)
        idx = arg1.length + ceil32(arg1.length) + 192
        s = 0
        while arg1.length + ceil32(arg1.length) + stor1[_265][2].length + 160 > idx:
            mem[idx + 32] = uint256(stor1[_265][s + 2].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = _265
        mem[32] = 1
        _416 = mem[64]
        mem[mem[64]] = address(stor1[_265].field_0)
        mem[mem[64] + 32] = address(stor1[_265].field_256)
        mem[mem[64] + 96] = address(stor1[_265].field_768)
        mem[mem[64] + 128] = uint256(stor1[_265].field_1024)
        mem[mem[64] + 160] = uint256(stor1[_265].field_1280)
        mem[mem[64] + 192] = uint8(stor1[_265].field_1792)
        mem[mem[64] + 64] = 224
        mem[_416 + 224] = stor1[_265][2].length
        mem[_416 + 256 len ceil32(stor1[_265][2].length)] = mem[arg1.length + ceil32(arg1.length) + 192 len ceil32(stor1[_265][2].length)]
        if not stor1[_265][2].length % 32:
            return memory
              from mem[64]
               len stor1[_265][2].length + _416 + -mem[64] + 256
        mem[floor32(stor1[_265][2].length) + _416 + 256] = mem[floor32(stor1[_265][2].length) + _416 + -stor1[_265][2].length % 32 + 288 len stor1[_265][2].length % 32]
        return memory
          from mem[64]
           len floor32(stor1[_265][2].length) + _416 + -mem[64] + 288
    if msg.sender == address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256):
        mem[64] = arg1.length + ceil32(arg1.length) + ceil32(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][2].length) + 192
        mem[arg1.length + ceil32(arg1.length) + 160] = stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][2].length
        mem[arg1.length + ceil32(arg1.length) + 192] = uint256(stor1[_265][2].field_0)
        idx = arg1.length + ceil32(arg1.length) + 192
        s = 0
        while arg1.length + ceil32(arg1.length) + stor1[_265][2].length + 160 > idx:
            mem[idx + 32] = uint256(stor1[_265][s + 2].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[0] = _265
        mem[32] = 1
        _421 = mem[64]
        mem[mem[64]] = address(stor1[_265].field_0)
        mem[mem[64] + 32] = address(stor1[_265].field_256)
        mem[mem[64] + 96] = address(stor1[_265].field_768)
        mem[mem[64] + 128] = uint256(stor1[_265].field_1024)
        mem[mem[64] + 160] = uint256(stor1[_265].field_1280)
        mem[mem[64] + 192] = uint8(stor1[_265].field_1792)
        mem[mem[64] + 64] = 224
        mem[_421 + 224] = stor1[_265][2].length
        mem[_421 + 256 len ceil32(stor1[_265][2].length)] = mem[arg1.length + ceil32(arg1.length) + 192 len ceil32(stor1[_265][2].length)]
        if not stor1[_265][2].length % 32:
            return memory
              from mem[64]
               len stor1[_265][2].length + _421 + -mem[64] + 256
        mem[floor32(stor1[_265][2].length) + _421 + 256] = mem[floor32(stor1[_265][2].length) + _421 + -stor1[_265][2].length % 32 + 288 len stor1[_265][2].length % 32]
        return memory
          from mem[64]
           len floor32(stor1[_265][2].length) + _421 + -mem[64] + 288
    if owner != msg.sender:
        revert with 0, 'Wrong Access Identity'
    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][2].length) + 192
    mem[arg1.length + ceil32(arg1.length) + 160] = stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][2].length
    mem[arg1.length + ceil32(arg1.length) + 192] = uint256(stor1[_265][2].field_0)
    idx = arg1.length + ceil32(arg1.length) + 192
    s = 0
    while arg1.length + ceil32(arg1.length) + stor1[_265][2].length + 160 > idx:
        mem[idx + 32] = uint256(stor1[_265][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = _265
    mem[32] = 1
    _426 = mem[64]
    mem[mem[64]] = address(stor1[_265].field_0)
    mem[mem[64] + 32] = address(stor1[_265].field_256)
    mem[mem[64] + 96] = address(stor1[_265].field_768)
    mem[mem[64] + 128] = uint256(stor1[_265].field_1024)
    mem[mem[64] + 160] = uint256(stor1[_265].field_1280)
    mem[mem[64] + 192] = uint8(stor1[_265].field_1792)
    mem[mem[64] + 64] = 224
    mem[_426 + 224] = stor1[_265][2].length
    mem[_426 + 256 len ceil32(stor1[_265][2].length)] = mem[arg1.length + ceil32(arg1.length) + 192 len ceil32(stor1[_265][2].length)]
    if not stor1[_265][2].length % 32:
        return memory
          from mem[64]
           len stor1[_265][2].length + _426 + -mem[64] + 256
    mem[floor32(stor1[_265][2].length) + _426 + 256] = mem[floor32(stor1[_265][2].length) + _426 + -stor1[_265][2].length % 32 + 288 len stor1[_265][2].length % 32]
    return memory
      from mem[64]
       len floor32(stor1[_265][2].length) + _426 + -mem[64] + 288
}

function sub_fab595bd(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    if tx.origin != msg.sender:
        revert with 0, 'Human Only'
    if ext_code.size(msg.sender):
        revert with 0, 'Addresses not owned by human are forbidden'
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32] = mem[ceil32(arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    mem[arg4.length + ceil32(arg1.length) + ceil32(arg4.length) + 160] = 2
    if not address(stor[mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 160 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]]):
        revert with 0, 'The token has not been registered!'
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(arg4.length) + 224 len arg1.length % 32] = mem[ceil32(arg1.length) + ceil32(arg4.length) + -(arg1.length % 32) + floor32(arg1.length) + 224 len arg1.length % 32]
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 192 len arg1.length % 32]].field_256)]):
        revert with 0, 'Blocked User Is Not Allowed'
    if uint8(stor4[address(stor1[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 192 len arg1.length % 32]].field_0)]):
        revert with 0, 'Blocked User Is Not Allowed'
    require not uint8(stor0.field_160)
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + ceil32(arg4.length) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg4.length) + 192] = arg1.length
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _1068 = sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 224 len arg1.length])
    if uint8(stor1[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 224 len arg1.length]].field_1800):
        revert with 0, 'The order has existed'
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32] = mem[ceil32(arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    mem[arg4.length + (2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512] = 2
    address(stor1[_1068].field_0) = uint64(arg2) << 96
    address(stor1[_1068].field_256) = uint64(arg3) << 96
    uint256(stor1[_1068][2][].field_0) = Array(len=arg4.length, data=arg4[all])
    address(stor1[_1068].field_768) = address(stor[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 512 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]])
    uint256(stor1[_1068].field_1024) = arg5
    uint256(stor1[_1068].field_1280) = block.timestamp
    uint256(stor1[_1068].field_1536) = block.timestamp + (2 * 3600)
    uint8(stor1[_1068].field_1792) = 1
    Mask(248, 0, stor1[_1068].field_1800) = 1
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32] = mem[ceil32(arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    mem[arg4.length + (2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512] = 2
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 544] = address(stor[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 512 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]])
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 576] = arg5
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 608] = 1
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = block.timestamp
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512] = 160
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = arg4.length
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 704 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        emit 0xa6170da9: 160, mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) - (arg4.length % 32)], mem[ceil32(arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32], Mask(8 * arg4.length % 32, 0, 2), mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 544 len 160], address(arg2), address(arg3)
    else:
        mem[floor32(arg4.length) + (2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = mem[floor32(arg4.length) + (2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + -(arg4.length % 32) + 736 len arg4.length % 32]
        emit 0xa6170da9: 160, mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 544 len floor32(arg4.length) - (arg4.length % 32)], mem[ceil32(arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32], Mask(8 * arg4.length % 32, 0, 2), mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + arg4.length + 544 len -(arg4.length % 32) + 192], address(arg2), address(arg3)
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 544 len arg4.length % 32] = mem[ceil32(arg1.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    mem[arg4.length + (2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + 512] = 2
    require ext_code.size(address(stor[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 512 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]]))
    call address(stor[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 512 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]]).0xdd62ed3e with:
         gas gas_remaining wei
        args owner, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5:
        revert with 0, 'Sufficient Allowance'
    require ext_code.size(address(stor[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 512 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]]))
    call address(stor[mem[(2 * arg1.length) + ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg4.length) + 512 len (arg4.length % 32) + 32]][call.data[arg4 + 36 len floor32(arg4.length)]]).0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
