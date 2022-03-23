contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;
uint8 stor4;

function _fallback() payable {
    mem[96 len -1101] = code.data[1370 len -1101]
    mem[64] = -1005
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = mem[96]
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4 = 0
    return code.data[269 len 1101]
}



// =====================  Runtime code  =====================


address owner;
uint256 price;
array of uint256 sub_9c8300f5;
array of uint256 subscribers;
uint8 closed;

function subscribers(uint256 arg1) payable {
    return subscribers[arg1][0 len subscribers[arg1].length]
}

function closed() payable {
    return bool(closed)
}

function owner() payable {
    return owner
}

function sub_9c8300f5(?) payable {
    return sub_9c8300f5[0 len sub_9c8300f5.length]
}

function price() payable {
    return price
}

function _fallback() payable {
  stop
}

function sub_0b7087ba(?) payable {
    require owner == msg.sender
    closed = 1
}

function sub_6fd1ce48(?) payable {
    require msg.value >= price
    require not closed
    subscribers.length++
    if not subscribers.length <= subscribers.length + 1:
        mem[0] = 3
        idx = subscribers.length + 1
        while sha3(3) + subscribers.length > idx + sha3(mem[0]):
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
    subscribers[subscribers.length][] = Array(len=arg1.length, data=arg1[all])
    call owner with:
       value msg.value wei
         gas 0 wei
}



}
