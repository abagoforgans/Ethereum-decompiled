contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 100
    stor5 = 100
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[46 len 6219]
}



// =====================  Runtime code  =====================


#
#  - getRecordAtIndex(uint256 arg1)
#
address stor0;
mapping of struct owner;
array of uint256 stor2;
array of struct stor3;
uint256 REGISTRATION_COST;
uint256 TRANSFER_COST;
array of bool stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function getTotalRecords() payable {
    return stor2.length
}

function getOwner(string arg1) payable {
    return address(owner[arg1[all]].field_0)
}

function getTime(string arg1) payable {
    return owner[arg1[all]].field_256
}

function numRecords() payable {
    return stor2.length
}

function REGISTRATION_COST() payable {
    return REGISTRATION_COST
}

function TRANSFER_COST() payable {
    return TRANSFER_COST
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function isRegistered(string arg1) payable {
    return owner[arg1[all]].field_256 != 0
}

function withdraw(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function sub_88d37525(?) payable {
    if msg.sender == address(owner[arg1[all]].field_0):
        owner[arg1[all]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        owner[arg1[all]][4][].field_0 = Array(len=arg3.length, data=arg3[all])
        owner[arg1[all]].field_1280 = arg4 or Mask(96, 160, owner[arg1[all]].field_1280)
}

function transfer(string arg1, address arg2) payable {
    if msg.value >= TRANSFER_COST:
        if msg.sender == address(owner[arg1[all]].field_0):
            owner[arg1[all]].field_0 = arg2 or Mask(96, 160, owner[arg1[all]].field_0)
    else:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
}

function sub_afd7fe59(?) payable {
    if msg.value < REGISTRATION_COST:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == owner[arg1[all]].field_256:
            owner[arg1[all]].field_256 = block.timestamp
            owner[arg1[all]].field_0 = msg.sender or Mask(96, 160, owner[arg1[all]].field_0)
            owner[arg1[all]].field_512 = stor3.length
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                mem[0] = 3
                idx = stor3.length + 1
                while sha3(3) + stor3.length > idx + sha3(mem[0]):
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
            require stor3.length - 1 < stor3.length
            stor[sha3(stor3.length + ('name', 'stor3', 3) - 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
            owner[arg1[all]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
            owner[arg1[all]][4][].field_0 = Array(len=arg3.length, data=arg3[all])
            owner[arg1[all]].field_1280 = arg4 or Mask(96, 160, owner[arg1[all]].field_1280)
            stor2.length++
}

function getRecord(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 192] = 1
    mem[ceil32(arg1.length) + 192] = owner[arg1[all]][3].length
    mem[ceil32(arg1.length) + 224] = owner[arg1[all]][3].field_0
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + owner[arg1[all]][3].length + 192 > idx:
        mem[idx + 32] = owner[arg1[all]][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + ceil32(owner[arg1[all]][4].length) + 256
    mem[ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 224] = owner[arg1[all]][4].length
    mem[0] = sha3(arg1[all], 1) + 4
    mem[ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 256] = owner[arg1[all]][4].field_0
    idx = ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + owner[arg1[all]][4].length + 224 > idx:
        mem[idx + 32] = owner[arg1[all]][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = address(owner[arg1[all]].field_0)
    mem[mem[64] + 32] = owner[arg1[all]].field_256
    mem[mem[64] + 128] = address(owner[arg1[all]].field_1280)
    mem[mem[64] + 64] = 160
    mem[mem[64] + 160] = owner[arg1[all]][3].length
    mem[mem[64] + 192 len owner[arg1[all]][3].length] = mem[ceil32(arg1.length) + 224 len owner[arg1[all]][3].length]
    mem[mem[64] + 96] = owner[arg1[all]][3].length + 192
    mem[owner[arg1[all]][3].length + mem[64] + 192] = owner[arg1[all]][4].length
    mem[owner[arg1[all]][3].length + mem[64] + 224 len owner[arg1[all]][4].length] = mem[ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 256 len owner[arg1[all]][4].length]
    if not owner[arg1[all]][4].length % 32:
        return address(owner[arg1[all]].field_0), 
               owner[arg1[all]].field_256,
               Array(len=owner[arg1[all]][3].length, data=mem[mem[64] + 192 len owner[arg1[all]][4].length + owner[arg1[all]][3].length + 32]),
               owner[arg1[all]][3].length + 192,
               address(owner[arg1[all]].field_1280)
    mem[floor32(owner[arg1[all]][4].length) + owner[arg1[all]][3].length + mem[64] + 224] = mem[floor32(owner[arg1[all]][4].length) + owner[arg1[all]][3].length + mem[64] + -owner[arg1[all]][4].length % 32 + 256 len owner[arg1[all]][4].length % 32]
    return address(owner[arg1[all]].field_0), 
           owner[arg1[all]].field_256,
           Array(len=owner[arg1[all]][3].length, data=mem[mem[64] + 192 len floor32(owner[arg1[all]][4].length) + owner[arg1[all]][3].length + 64]),
           owner[arg1[all]][3].length + 192,
           address(owner[arg1[all]].field_1280)
}

function sub_6598a1ae(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == address(owner[arg1[all]].field_0):
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + arg1.length + 128] = 1
        address(owner[arg1[all]].field_0) = 0
        owner[arg1[all]].field_256 = 0
        owner[arg1[all]].field_512 = 0
        owner[arg1[all]].field_768 = 0
        if 31 < owner[arg1[all]][3].length:
            idx = 0
            while owner[arg1[all]][3].length + 31 / 32 > idx:
                owner[arg1[all]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        owner[arg1[all]].field_1024 = 0
        if 31 < owner[arg1[all]][4].length:
            idx = 0
            while owner[arg1[all]][4].length + 31 / 32 > idx:
                owner[arg1[all]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        address(owner[arg1[all]].field_1280) = 0
        stor2.length--
        require stor3.length - 1 < stor3.length
        require owner[arg1[all]].field_512 < stor3.length
        if 31 >= stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length:
            stor3[stor1[arg1[all]].field_512].field_0 = uint256(storC257[stor3.length])
            idx = 0
            while stor3[stor1[arg1[all]].field_512].length + 31 / 32 > idx:
                stor3[stor1[arg1[all]].field_512 + idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor3[stor1[arg1[all]].field_512].field_0 = Mask(255, 1, (256 * not bool(storC257[stor3.length])) - 1 and uint256(storC257[stor3.length])) + 1
            if not Mask(255, 1, (256 * not bool(storC257[stor3.length])) - 1 and uint256(storC257[stor3.length])):
                idx = 0
                while stor3[stor1[arg1[all]].field_512].length + 31 / 32 > idx:
                    stor3[stor1[arg1[all]].field_512 + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length + 31 / 32 > idx:
                    stor3[stor1[arg1[all]].field_512 + s].field_0 = stor[idx + sha3(stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6)]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length + 31 / 32
                while stor3[stor1[arg1[all]].field_512].length + 31 / 32 > idx:
                    stor3[stor1[arg1[all]].field_512 + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        require owner[arg1[all]].field_512 < stor3.length
        mem[ceil32(arg1.length) + 128] = stor3[stor1[arg1[all]].field_512].field_0
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor3[stor1[arg1[all]].field_512].length + 128 > idx + 32:
            mem[idx + 32] = stor3[stor1[arg1[all]].field_512 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor3[stor1[arg1[all]].field_512].length + 128] = 1
        stor2[sha3(mem[ceil32(arg1.length) + 128 len stor3[stor1[arg1[all]].field_512].length + 32])] = owner[arg1[all]].field_512
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            mem[0] = 3
            idx = stor3.length - 1
            while sha3(3) + stor3.length > idx + sha3(mem[0]):
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
}



}
