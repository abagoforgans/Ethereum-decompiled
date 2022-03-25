contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 10^18
    return code.data[49 len 4733]
}



// =====================  Runtime code  =====================


#
#  - fromAddress(address arg1)
#
address owner;
uint256 stor0;
mapping of uint256 stor1;
mapping of uint256 fromTLA;
array of struct stor3;
uint256 fee;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037077;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037079;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037081;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037087;

function meta(uint256 arg1, bytes32 arg2) payable {
    require arg1 < stor3.length
    return uint256(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a0][arg2])
}

function fromTLA(string arg1) payable {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    require fromTLA[arg1[all]] - 1 < stor3.length
    mem[ceil32(arg1.length) + 192] = uint256(stor[sha3((6 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a8)])
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[(6 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a8].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a8) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return fromTLA[arg1[all]] - 1, 
           storC257[stor2[arg1[all]]],
           storC257[stor2[arg1[all]]],
           Array(len=stor[(6 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a8].length, data=mem[ceil32(arg1.length) + 192 len stor[(6 * stor2[arg1[all]]) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a8].length]),
           storC257[stor2[arg1[all]]]
}

function owner() payable {
    return address(owner)
}

function tokenCount() payable {
    return stor3.length
}

function fee() payable {
    return fee
}

function _fallback() payable {
  stop
}

function setFee(uint256 arg1) payable {
    if msg.sender == address(owner):
        fee = arg1
}

function drain() payable {
    if address(owner) != msg.sender:
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 0 wei
    require ext_call.success
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        emit NewOwner(address(owner), arg1);
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setMeta(uint256 arg1, bytes32 arg2, bytes32 arg3) payable {
    require arg1 < stor3.length
    if address(stor3[arg1].field_1024) == msg.sender:
        require arg1 < stor3.length
        uint256(stor[('name', 'stor3', 3) + (6 * arg1) + 5][arg2].field_0) = arg3
        emit MetaChanged(arg3, arg1, arg2);
}

function unregister(uint256 arg1) payable {
    if msg.sender == address(owner):
        require arg1 < stor3.length
        mem[96] = uint256(stor[sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
        idx = 96
        s = 0
        while stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        emit Unregistered(sha3(mem[96 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length]), arg1);
        require arg1 < stor3.length
        stor1[address(stor3[arg1].field_0)] = 0
        mem[96] = uint256(stor[sha3((6 * arg1) + ('name', 'stor3', 3) + 1)].field_0)
        idx = 96
        s = 0
        while stor[(6 * arg1) + ('name', 'stor3', 3) + 1].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor3', 3) + 1)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[stor[(6 * arg1) + ('name', 'stor3', 3) + 1].length + 96] = 2
        uint256(stor[sha3(mem[96 len stor[(6 * arg1) + ('name', 'stor3', 3) + 1].length + 32])]) = 0
        require arg1 < stor3.length
        address(stor3[arg1].field_0) = 0
        uint256(stor3[arg1].field_256) = 0
        if 31 < stor[(6 * arg1) + ('name', 'stor3', 3) + 1].length:
            idx = 0
            while stor[(6 * arg1) + ('name', 'stor3', 3) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((6 * arg1) + ('name', 'stor3', 3) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor3[arg1].field_512) = 0
        uint256(stor3[arg1].field_768) = 0
        if 31 < stor[(6 * arg1) + ('name', 'stor3', 3) + 3].length:
            idx = 0
            while stor[(6 * arg1) + ('name', 'stor3', 3) + 3].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((6 * arg1) + ('name', 'stor3', 3) + 3)].field_0) = 0
                idx = idx + 1
                continue 
        address(stor3[arg1].field_1024) = 0
}

function register(address arg1, string arg2, uint256 arg3, string arg4) payable {
    if msg.value < fee:
        return 0
    if stor1[address(arg1)] != 0:
        return 0
    if arg2.length != 3:
        return 0
    if fromTLA[arg2[all]] != 0:
        return 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = (6 * stor3.length) + 6
        while sha3(3) + (6 * stor3.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                address(stor[idx + sha3(mem[0]) + 4]) = 0
                idx = idx + 6
                continue 
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            if 31 < stor[s + sha3(mem[0]) + 3].length:
                mem[0] = s + sha3(mem[0]) + 3
                t = sha3(s + sha3(mem[0]) + 3)
                while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            address(stor[s + sha3(mem[0]) + 4]) = 0
            s = s + 6
            continue 
    uint256(stor3[stor3.length].field_0) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_0))
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor3[stor3.length].field_512) = arg3
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint256(stor3[stor3.length].field_1024) = Mask(96, 0, stor3[stor3.length].field_1184)
    stor1[address(arg1)] = stor3.length
    fromTLA[arg2[all]] = stor3.length
    emit Registered(address(arg1), Array(len=arg4.length, data=arg4[all]), sha3(arg2[all]), stor3.length - 1);
    return 1
}

function registerAs(address arg1, string arg2, uint256 arg3, string arg4, address arg5) payable {
    if msg.value < fee:
        return 0
    if stor1[address(arg1)] != 0:
        return 0
    if arg2.length != 3:
        return 0
    if fromTLA[arg2[all]] != 0:
        return 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = (6 * stor3.length) + 6
        while sha3(3) + (6 * stor3.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                address(stor[idx + sha3(mem[0]) + 4]) = 0
                idx = idx + 6
                continue 
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            if 31 < stor[s + sha3(mem[0]) + 3].length:
                mem[0] = s + sha3(mem[0]) + 3
                t = sha3(s + sha3(mem[0]) + 3)
                while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            address(stor[s + sha3(mem[0]) + 4]) = 0
            s = s + 6
            continue 
    uint256(stor3[stor3.length].field_0) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_0))
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor3[stor3.length].field_512) = arg3
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint256(stor3[stor3.length].field_1024) = Mask(96, 0, stor3[stor3.length].field_1184)
    stor1[address(arg1)] = stor3.length
    fromTLA[arg2[all]] = stor3.length
    emit Registered(address(arg1), Array(len=arg4.length, data=arg4[all]), sha3(arg2[all]), stor3.length - 1);
    return 1
}

function token(uint256 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    require arg1 < stor3.length
    mem[160] = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
    mem[192] = uint256(stor[sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
    idx = 192
    s = 0
    while stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 224
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 192] = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length
    mem[0] = (6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 224] = uint256(stor[sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)])
    idx = ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 224
    s = 0
    while ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 224] = address(stor3[arg1].field_0)
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 288] = storC257[arg1]
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 352] = storC257[arg1]
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 256] = 160
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 384] = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 416 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length] = mem[192 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length]
    mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 320] = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 192
    mem[stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 416] = stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length
    mem[stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 448 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length] = mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 224 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length]
    if not stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length % 32:
        return address(stor3[arg1].field_0), 
               Array(len=stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length, data=mem[192 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length], stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length, mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + 224 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length]),
               storC257[arg1],
               stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 192,
               storC257[arg1]
    mem[floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 448] = mem[floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + -stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length % 32 + 480 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length % 32]
    return address(stor3[arg1].field_0), 
           Array(len=stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length, data=mem[192 len stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length], stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length, mem[ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length) + ceil32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 448 len floor32(stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2].length) + 32]),
           storC257[arg1],
           stor[(6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 192,
           storC257[arg1]
}



}
