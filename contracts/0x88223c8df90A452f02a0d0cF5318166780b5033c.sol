contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
array of struct stor4;
mapping of uint8 stor5;
array of struct hashes;
mapping of uint8 stor99;
array of address stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;

function isPauser(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function hashes(uint256 arg1) {
    require arg1 < hashes.length
    mem[128] = uint256(hashes[arg1].field_0)
    idx = 128
    s = 0
    while hashes[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(hashes[(3 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=hashes[arg1].length, data=mem[128 len hashes[arg1].length]), 
           address(hashes[arg1].field_256),
           uint256(hashes[arg1].field_512)
}

function paused() {
    return bool(stor1)
}

function getUserOptOut(address arg1, address arg2) {
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function opt(address arg1) {
    require not stor1
    if stor5[msg.sender][address(arg1)]:
        stor5[msg.sender][address(arg1)] = 0
        emit UserOptOut(msg.sender, address(arg1), block.timestamp);
    else:
        stor5[msg.sender][address(arg1)] = 1
        emit UserOptIn(msg.sender, address(arg1), block.timestamp);
}

function getIndexByHash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getHashExists(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    mem[ceil32(arg1.length) + 128] = bool(uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]))
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getAllIndexesByAddress(address arg1) {
    if not uint256(stor4[address(arg1)].field_0):
        mem[(32 * uint256(stor4[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(stor4[address(arg1)].field_0)) + 160] = uint256(stor4[address(arg1)].field_0)
        mem[(32 * uint256(stor4[address(arg1)].field_0)) + 192 len floor32(uint256(stor4[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor4[address(arg1)].field_0))]
        return memory
          from (32 * uint256(stor4[address(arg1)].field_0)) + 128
           len (96 * uint256(stor4[address(arg1)].field_0)) + 64
    mem[128] = uint256(stor4[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor4[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(stor4[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor4[address(arg1)].field_0)) + 192 len floor32(uint256(stor4[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor4[address(arg1)].field_0))]
    return Array(len=uint256(stor4[address(arg1)].field_0), data=mem[128 len floor32(uint256(stor4[address(arg1)].field_0))], mem[(32 * uint256(stor4[address(arg1)].field_0)) + floor32(uint256(stor4[address(arg1)].field_0)) + 192 len (32 * uint256(stor4[address(arg1)].field_0)) - floor32(uint256(stor4[address(arg1)].field_0))]), 
}

function storeBatch(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 96
    require not stor1
    mem[ceil32(arg1.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 224] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 224]
    mem[ceil32(arg1.length) + arg1.length + 224] = 2
    require bool(uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 224 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])) != 1
    hashes.length++
    uint256(hashes[hashes.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    storF652[stor6.length] = msg.sender
    storF652[stor6.length] = block.timestamp
    mem[ceil32(arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 320] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 320] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 320] = 3
    uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = hashes.length
    uint256(stor4[msg.sender].field_0)++
    uint256(stor4[msg.sender][uint256(stor4[msg.sender].field_0)].field_0) = hashes.length
    mem[ceil32(arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 320] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 320] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 320] = 2
    uint8(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = 1
    mem[ceil32(arg1.length) + 352] = block.timestamp
    mem[ceil32(arg1.length) + 384] = arg1.length
    mem[ceil32(arg1.length) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit AddedBatch(address arg1, string arg2, uint256 arg3):
                        64,
                        mem[ceil32(arg1.length) + 352 len arg1.length],
                        0,
                        mem[ceil32(arg1.length) + arg1.length + 352 len 64],
                        msg.sender,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 448 len arg1.length % 32]
        emit AddedBatch(address arg1, string arg2, uint256 arg3):
                        64,
                        mem[ceil32(arg1.length) + 352 len arg1.length],
                        0,
                        mem[ceil32(arg1.length) + arg1.length + 352 len -(arg1.length % 32) + 96],
                        msg.sender,
}



}
