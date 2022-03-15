contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 2914]




// =====================  Runtime code  =====================


mapping of struct addr;
array of struct stor1;

function addr(string arg1) payable {
    return addr[arg1[all]].field_0
}

function subRegistrar(string arg1) payable {
    return addr[arg1[all]].field_256
}

function content(string arg1) payable {
    return addr[arg1[all]].field_512
}

function owner(string arg1) payable {
    return addr[arg1[all]].field_768
}

function _fallback() payable {
  stop
}

function record(string arg1) payable {
    return addr[arg1[all]].field_0, addr[arg1[all]].field_256, addr[arg1[all]].field_512, addr[arg1[all]].field_768
}

function setContent(string arg1, bytes32 arg2) payable {
    if msg.sender == addr[arg1[all]].field_768:
        addr[arg1[all]].field_512 = arg2
        emit code.data[2882 len 32]: 96
}

function setAddr(string arg1, address arg2) payable {
    if msg.sender == addr[arg1[all]].field_768:
        addr[arg1[all]].field_0 = arg2 or Mask(96, 160, addr[arg1[all]].field_0)
        emit code.data[2882 len 32]: 96
}

function transfer(string arg1, address arg2) payable {
    if msg.sender == addr[arg1[all]].field_768:
        addr[arg1[all]].field_768 = arg2 or Mask(96, 160, addr[arg1[all]].field_768)
        emit code.data[2882 len 32]: 96
}

function setSubRegistrar(string arg1, address arg2) payable {
    if msg.sender == addr[arg1[all]].field_768:
        addr[arg1[all]].field_256 = arg2 or Mask(96, 160, addr[arg1[all]].field_256)
        emit code.data[2882 len 32]: 96
}

function name(address arg1) payable {
    if stor1[address(arg1)].field_0:
        mem[160] = stor1[address(arg1)].field_0
        idx = 160
        s = 0
        while stor1[address(arg1)].field_0 + 128 > idx:
            mem[idx + 32] = stor1[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1[address(arg1)].field_0, data=mem[160 len stor1[address(arg1)].field_0])
}

function setName(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor1[address(msg.sender)].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor1[address(msg.sender)].field_0 + 31 / 32 > idx:
            stor1[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor1[address(msg.sender)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor1[address(msg.sender)].field_0 + 31 / 32 > idx:
            stor1[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function reserve(string arg1) payable {
    if addr[arg1[all]].field_768:
        if addr[arg1[all]].field_768 != 0:
            if msg.value >= addr[arg1[all]].field_1024:
                if addr[arg1[all]].field_1024 <= 0:
                    addr[arg1[all]].field_1024 = msg.value
                else:
                    call addr[arg1[all]].field_768 with:
                       value addr[arg1[all]].field_1024 wei
                         gas 0 wei
                addr[arg1[all]].field_1024 = 0
                addr[arg1[all]].field_1025 = addr[arg1[all]].field_1024
                addr[arg1[all]].field_768 = msg.sender or Mask(96, 160, addr[arg1[all]].field_768)
                emit code.data[2882 len 32]: 96
    else:
        if msg.value >= 10^18:
            if addr[arg1[all]].field_1024 <= 0:
                addr[arg1[all]].field_1024 = msg.value
            else:
                call addr[arg1[all]].field_768 with:
                   value addr[arg1[all]].field_1024 wei
                     gas 0 wei
            addr[arg1[all]].field_1024 = 0
            addr[arg1[all]].field_1025 = addr[arg1[all]].field_1024
            addr[arg1[all]].field_768 = msg.sender or Mask(96, 160, addr[arg1[all]].field_768)
            emit code.data[2882 len 32]: 96
        else:
            if addr[arg1[all]].field_768 != 0:
                if msg.value >= addr[arg1[all]].field_1024:
                    if addr[arg1[all]].field_1024 <= 0:
                        addr[arg1[all]].field_1024 = msg.value
                    else:
                        call addr[arg1[all]].field_768 with:
                           value addr[arg1[all]].field_1024 wei
                             gas 0 wei
                    addr[arg1[all]].field_1024 = 0
                    addr[arg1[all]].field_1025 = addr[arg1[all]].field_1024
                    addr[arg1[all]].field_768 = msg.sender or Mask(96, 160, addr[arg1[all]].field_768)
                    emit code.data[2882 len 32]: 96
}



}
