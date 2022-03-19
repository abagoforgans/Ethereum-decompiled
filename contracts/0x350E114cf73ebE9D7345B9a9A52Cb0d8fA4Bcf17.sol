contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 10
    stor2 = 0
    stor3 = 10^6
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[58 len 2536]
}



// =====================  Runtime code  =====================


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 sub_8550af16;
address owner;
uint256 stor5;

function participants(address arg1) payable {
    return participants[arg1].field_0
}

function sub_4c1a4115(?) payable {
    return stor1.length
}

function sub_5a9f6b0b(?) payable {
    return stor3.length
}

function sub_8550af16(?) payable {
    return sub_8550af16
}

function owner() payable {
    return address(owner)
}

function balance() payable {
    return stor2.length
}

function sub_0181fbc2(?) payable {
    if msg.sender == address(owner):
        stor1.length = arg1
}

function ChangeTimeout(uint256 arg1) payable {
    if msg.sender == address(owner):
        sub_8550af16 = 24 * 3600 * arg1
}

function SetOwner(address arg1) payable {
    if msg.sender == address(owner):
        if arg1 != 0:
            uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function sub_fd709fd4(?) payable {
    if msg.sender == address(owner):
        call arg1 with:
           value 10^15 * arg2 wei
             gas 0 wei
        stor2.length += -1 * 10^15 * arg2
}

function Deposit() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor2.length += msg.value
        participants[address(msg.sender)].field_256++
        if not participants[address(msg.sender)].field_256 <= participants[address(msg.sender)].field_256 + 1:
            idx = 4 * participants[address(msg.sender)].field_256 + 1
            while 4 * participants[address(msg.sender)].field_256 > idx:
                participants[address(msg.sender)][idx + 1].field_0 = 0
                participants[address(msg.sender)][idx + 1].field_256 = 0
                participants[address(msg.sender)][idx + 1].field_512 = 0
                participants[address(msg.sender)][idx + 1].field_768 = 0
                idx = idx + 1
                continue 
        participants[address(msg.sender)].field_0++
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = msg.value
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 = block.timestamp
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = stor3.length
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + sub_8550af16
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        stor2.length += msg.value
        participants[address(msg.sender)].field_256++
        if not participants[address(msg.sender)].field_256 <= participants[address(msg.sender)].field_256 + 1:
            idx = 4 * participants[address(msg.sender)].field_256 + 1
            while 4 * participants[address(msg.sender)].field_256 > idx:
                participants[address(msg.sender)][idx + 1].field_0 = 0
                participants[address(msg.sender)][idx + 1].field_256 = 0
                participants[address(msg.sender)][idx + 1].field_512 = 0
                participants[address(msg.sender)][idx + 1].field_768 = 0
                idx = idx + 1
                continue 
        participants[address(msg.sender)].field_0++
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = msg.value
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 = block.timestamp
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = stor3.length
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + sub_8550af16
}

function sub_01e210b7(?) payable {
    if participants[address(msg.sender)].field_0 > 0:
        stor2.length += msg.value
        require arg1 < participants[address(msg.sender)].field_256
        if 10^15 * arg2 <= stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
            require arg1 < participants[address(msg.sender)].field_256
            if stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 <= block.timestamp:
                require arg1 < participants[address(msg.sender)].field_256
                if eth.balance(this.address) >= (10^15 * arg2) + ((10^15 * block.timestamp * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600):
                    call msg.sender with:
                       value (10^15 * arg2) + ((10^15 * block.timestamp * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) - ((10^15 * block.timestamp * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * stor1.length / 100) wei
                         gas 0 wei
                    call address(owner) with:
                       value (10^15 * block.timestamp * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * stor1.length / 100 wei
                         gas 0 wei
                    require arg1 < participants[address(msg.sender)].field_256
                    if arg2 == stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
                        participants[address(msg.sender)].field_0--
                    require arg1 < participants[address(msg.sender)].field_256
                    stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 += -1 * 10^15 * arg2
                    stor2.length = stor2.length - (10^15 * arg2) - ((10^15 * block.timestamp * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
}

function sub_3c128873(?) payable {
    mem[64] = 96
    if participants[address(msg.sender)].field_0 > 0:
        stor2.length += msg.value
        if arg1:
            mem[0] = msg.sender
            mem[32] = 0
            idx = 0
            while idx < participants[address(msg.sender)].field_256:
                mem[0] = sha3(address(msg.sender), 0) + 1
                if stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 <= block.timestamp:
                    require idx < participants[address(msg.sender)].field_256
                    mem[0] = sha3(address(msg.sender), 0) + 1
                    if eth.balance(this.address) < stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600):
                    _32 = mem[64]
                    call msg.sender with:
                       value stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) - ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * stor1.length / 100) wei
                         gas 0 wei
                    call address(owner) with:
                       value (block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * stor1.length / 100 wei
                         gas 0 wei
                    mem[64] = mem[64] + (32 * participants[address(msg.sender)].field_256) + 32
                    mem[_32] = participants[address(msg.sender)].field_256
                    t = _32 + 32
                    s = 0
                    while s < participants[address(msg.sender)].field_256:
                        mem[0] = sha3(address(msg.sender), 0) + 1
                        _49 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_49] = stor[(4 * s) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                        mem[_49 + 32] = stor[(4 * s) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                        mem[_49 + 64] = stor[(4 * s) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512
                        mem[_49 + 96] = stor[(4 * s) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768
                        mem[t] = _49
                        t = t + 32
                        s = s + 1
                        continue 
                    _47 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_47] = 0
                    if idx < mem[_32]:
                        _61 = mem[_32]
                        s = idx
                        while s < _61 - 1:
                            require s + 1 < mem[_32]
                            require s < mem[_32]
                            mem[_32 + (32 * s) + 32] = mem[(32 * s + 1) + _32 + 32]
                            _61 = mem[_32]
                            s = s + 1
                            continue 
                        _62 = mem[_32]
                        require mem[_32] - 1 < mem[_32]
                        _65 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_65] = 0
                        mem[_65 + 32] = 0
                        mem[_65 + 64] = 0
                        mem[_65 + 96] = 0
                        mem[_32 + (32 * _62 - 1) + 32] = _65
                    participants[address(msg.sender)].field_256--
                    if not participants[address(msg.sender)].field_256 <= participants[address(msg.sender)].field_256 - 1:
                        s = sha3(sha3(address(msg.sender), 0) + 1) + (4 * participants[address(msg.sender)].field_256 - 1)
                        while sha3(sha3(address(msg.sender), 0) + 1) + (4 * participants[address(msg.sender)].field_256) > s:
                            stor[s] = 0
                            stor1[s] = 0
                            stor2[s] = 0
                            stor3[s] = 0
                            s = s + 1
                            continue 
                    mem[0] = msg.sender
                    mem[32] = 0
                    participants[address(msg.sender)].field_0--
                    stor2.length = stor2.length - stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 - ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                idx = idx + 1
                continue 
            if not participants[address(msg.sender)].field_256:
                idx = 0
                while 4 * participants[address(msg.sender)].field_256 > idx:
                    participants[address(msg.sender)][idx + 1].field_0 = 0
                    participants[address(msg.sender)][idx + 1].field_256 = 0
                    participants[address(msg.sender)][idx + 1].field_512 = 0
                    participants[address(msg.sender)][idx + 1].field_768 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while 4 * participants[address(msg.sender)].field_256 > idx:
                    participants[address(msg.sender)][s + 1].field_0 = participants[address(msg.sender)][idx + 1].field_0
                    participants[address(msg.sender)][s + 1].field_256 = participants[address(msg.sender)][idx + 1].field_256
                    participants[address(msg.sender)][s + 1].field_512 = participants[address(msg.sender)][idx + 1].field_512
                    participants[address(msg.sender)][s + 1].field_768 = participants[address(msg.sender)][idx + 1].field_768
                    s = s + 4
                    idx = idx + 4
                    continue 
                idx = Mask(252, 2, (4 * participants[address(msg.sender)].field_256) + 3)
                while 4 * participants[address(msg.sender)].field_256 > idx:
                    participants[address(msg.sender)][idx + 1].field_0 = 0
                    participants[address(msg.sender)][idx + 1].field_256 = 0
                    participants[address(msg.sender)][idx + 1].field_512 = 0
                    participants[address(msg.sender)][idx + 1].field_768 = 0
                    idx = idx + 1
                    continue 
}



}
