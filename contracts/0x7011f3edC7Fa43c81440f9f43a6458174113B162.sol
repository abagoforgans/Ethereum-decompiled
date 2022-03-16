contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = code.data[3377 len 32] or Mask(96, 160, stor4)
    return code.data[140 len 3237]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 payoutIdx;
uint256 collectedFees;
address owner;
uint256 stor3;
address sub_b4b31becAddress;
uint256 stor4;

function owner() payable {
    return address(owner)
}

function collectedFees() payable {
    return collectedFees
}

function payoutIdx() payable {
    return payoutIdx
}

function sub_b4b31bec(?) payable {
    return address(sub_b4b31becAddress)
}

function getNumberOfParticipants() payable {
    return stor0.length
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
}

function setBitcoinBridge(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function collectFees(address arg1) payable {
    if msg.sender == address(owner):
        if collectedFees:
            call arg1 with:
               value collectedFees wei
                 gas 0 wei
            collectedFees = 0
}

function participants(uint256 arg1) payable {
    require arg1 < stor0.length
    if not uint256(stor0[arg1].field_256):
        if not uint256(stor0[arg1].field_768):
            return uint8(stor0[arg1].field_0), 
                   128,
                   address(stor0[arg1].field_512),
                   160,
                   uint256(stor0[arg1].field_256),
                   uint256(stor0[arg1].field_768)
        mem[288] = uint256(stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_0)
        idx = 288
        s = 0
        while uint256(stor0[arg1].field_768) + 288 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return uint8(stor0[arg1].field_0), 
               128,
               address(stor0[arg1].field_512),
               160,
               uint256(stor0[arg1].field_256),
               uint256(stor0[arg1].field_768),
               mem[288 len uint256(stor0[arg1].field_768) + (floor32(uint256(stor0[arg1].field_768) - 1) + -uint256(stor0[arg1].field_768) + 32 % 32)]
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 256
    s = 0
    while uint256(stor0[arg1].field_256) + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if not uint256(stor0[arg1].field_768):
        return uint8(stor0[arg1].field_0), 
               Array(len=uint256(stor0[arg1].field_256), data=mem[256 len uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32)], uint256(stor0[arg1].field_768)),
               address(stor0[arg1].field_512),
               uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + 160
    mem[uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + 288] = uint256(stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_0)
    idx = uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + 288
    s = 0
    while uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + uint256(stor0[arg1].field_768) + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint8(stor0[arg1].field_0), 
           Array(len=uint256(stor0[arg1].field_256), data=mem[256 len uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32)], uint256(stor0[arg1].field_768), mem[uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + 288 len uint256(stor0[arg1].field_768) + (floor32(uint256(stor0[arg1].field_768) - 1) + -uint256(stor0[arg1].field_768) + 32 % 32)]),
           address(stor0[arg1].field_512),
           uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32) + 160
}

function _fallback() payable {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 128] = 0
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if calldata.size > 16:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value > 10^18:
                call msg.sender with:
                   value msg.value - 10^18 wei
                     gas 0 wei
            stor0.length++
            if not stor0.length <= stor0.length + 1:
                mem[0] = 0
                idx = 4 * stor0.length + 1
                while sha3(0) + (4 * stor0.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (uint256(stor[idx + sha3(mem[0]) + 1]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    address(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (uint256(stor[idx + sha3(mem[0]) + 3]) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            uint256(stor0[stor0.length].field_256) = calldata.size
            if not calldata.size:
                idx = 0
                while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while calldata.size + 128 > idx:
                    uint256(stor[s + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, calldata.size + 31) >> 5
                while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            require stor0.length < stor0.length
            uint8(stor0[stor0.length].field_0) = 0
            uint256(stor0[stor0.length].field_512) = msg.sender or Mask(96, 160, uint256(stor0[stor0.length].field_512))
            emit NewParticipant(stor0.length);
            if not stor0.length:
                collectedFees += 10^18
            else:
                collectedFees += 10^17
                if not stor0.length % 3:
                    require payoutIdx < stor0.length
                    require payoutIdx < stor0.length
                    if not uint8(stor0[stor1].field_0):
                        call address(stor0[stor1].field_512) with:
                           value 75 * 10^13 * 24 * 3600 wei
                             gas 0 wei
                    else:
                        if not uint256(stor0[stor1].field_768):
                            call address(sub_b4b31becAddress).queuePayment(bytes rg1) with:
                               value 75 * 10^13 * 24 * 3600 wei
                                 gas gas_remaining - 34050 wei
                                args 32, uint256(stor0[stor1].field_768)
                        else:
                            mem[ceil32(calldata.size) + 228] = uint256(stor[sha3((4 * stor1) + ('name', 'stor0', 0) + 3)].field_0)
                            idx = ceil32(calldata.size) + 228
                            s = 0
                            while ceil32(calldata.size) + uint256(stor0[stor1].field_768) + 228 > idx + 32:
                                mem[idx + 32] = uint256(stor[s + sha3((4 * stor1) + ('name', 'stor0', 0) + 3)].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            call address(sub_b4b31becAddress).queuePayment(bytes rg1) with:
                               value 75 * 10^13 * 24 * 3600 wei
                                 gas gas_remaining - 34050 wei
                                args Array(len=uint256(stor0[stor1].field_768), data=mem[ceil32(calldata.size) + 228 len uint256(stor0[stor1].field_768) + (floor32(uint256(stor0[stor1].field_768) - 1) + -uint256(stor0[stor1].field_768) + 32 % 32)])
                        require ext_call.success
                    payoutIdx++
}

function enter(bytes arg1, bytes arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.value < 10^18:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if arg1.length > 16:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if arg2.length > 35:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if msg.value > 10^18:
                    call msg.sender with:
                       value msg.value - 10^18 wei
                         gas 0 wei
                stor0.length++
                if not stor0.length <= stor0.length + 1:
                    mem[0] = 0
                    idx = 4 * stor0.length + 1
                    while sha3(0) + (4 * stor0.length) > idx + sha3(mem[0]):
                        uint8(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (uint256(stor[idx + sha3(mem[0]) + 1]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + (uint256(stor[idx + sha3(mem[0]) + 3]) + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                require stor0.length < stor0.length
                uint256(stor0[stor0.length].field_256) = arg1.length
                if not arg1.length:
                    idx = 0
                    while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 128
                    while arg1.length + 128 > idx:
                        uint256(stor[s + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg1.length + 31) >> 5
                    while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                require stor0.length < stor0.length
                if arg2.length <= 0:
                    uint8(stor0[stor0.length].field_0) = 0
                    uint256(stor0[stor0.length].field_512) = msg.sender or Mask(96, 160, uint256(stor0[stor0.length].field_512))
                else:
                    uint8(stor0[stor0.length].field_0) = 1
                    uint256(stor0[stor0.length].field_768) = arg2.length
                    if not arg2.length:
                        idx = 0
                        while uint256(stor0[stor0.length].field_768) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = ceil32(arg1.length) + 160
                        while ceil32(arg1.length) + arg2.length + 160 > idx:
                            uint256(stor[s + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)].field_0) = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg2.length + 31) >> 5
                        while uint256(stor0[stor0.length].field_768) + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)].field_0) = 0
                            idx = idx + 1
                            continue 
                emit NewParticipant(stor0.length);
                if not stor0.length:
                    collectedFees += 10^18
                else:
                    collectedFees += 10^17
                    if not stor0.length % 3:
                        require payoutIdx < stor0.length
                        require payoutIdx < stor0.length
                        if not uint8(stor0[stor1].field_0):
                            call address(stor0[stor1].field_512) with:
                               value 75 * 10^13 * 24 * 3600 wei
                                 gas 0 wei
                        else:
                            if not uint256(stor0[stor1].field_768):
                                call address(sub_b4b31becAddress).queuePayment(bytes rg1) with:
                                   value 75 * 10^13 * 24 * 3600 wei
                                     gas gas_remaining - 34050 wei
                                    args 32, uint256(stor0[stor1].field_768)
                            else:
                                mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = uint256(stor[sha3((4 * stor1) + ('name', 'stor0', 0) + 3)].field_0)
                                idx = ceil32(arg1.length) + ceil32(arg2.length) + 228
                                s = 0
                                while ceil32(arg1.length) + ceil32(arg2.length) + uint256(stor0[stor1].field_768) + 228 > idx + 32:
                                    mem[idx + 32] = uint256(stor[s + sha3((4 * stor1) + ('name', 'stor0', 0) + 3)].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                call address(sub_b4b31becAddress).queuePayment(bytes rg1) with:
                                   value 75 * 10^13 * 24 * 3600 wei
                                     gas gas_remaining - 34050 wei
                                    args Array(len=uint256(stor0[stor1].field_768), data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len uint256(stor0[stor1].field_768) + (floor32(uint256(stor0[stor1].field_768) - 1) + -uint256(stor0[stor1].field_768) + 32 % 32)])
                            require ext_call.success
                        payoutIdx++
}



}
