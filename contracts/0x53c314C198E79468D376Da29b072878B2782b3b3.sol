contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 10
    stor2 = 30
    stor3 = 24 * 3600
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[53 len 3001]
}



// =====================  Runtime code  =====================


uint256 sub_4c1a4115;
uint256 sub_1d9df585;
uint256 sub_c8d77ce0;
address owner;
uint256 stor4;

function participants(address arg1) payable {
    return participants[arg1].field_0, participants[arg1].field_256
}

function sub_1d9df585(?) payable {
    return sub_1d9df585
}

function sub_4c1a4115(?) payable {
    return sub_4c1a4115
}

function owner() payable {
    return address(owner)
}

function sub_c8d77ce0(?) payable {
    return sub_c8d77ce0
}

function sub_0181fbc2(?) payable {
    if msg.sender == address(owner):
        sub_4c1a4115 = arg1
}

function sub_4001c07f(?) payable {
    if msg.sender == address(owner):
        sub_1d9df585 = arg1
}

function ChangeTimeout(uint256 arg1) payable {
    if msg.sender == address(owner):
        sub_c8d77ce0 = 24 * 3600 * arg1
}

function SetOwner(address arg1, bool arg2) payable {
    if msg.sender == address(owner):
        if arg1 != 0:
            if arg2:
                uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function Deposit() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        participants[address(msg.sender)].field_512++
        if not participants[address(msg.sender)].field_512 <= participants[address(msg.sender)].field_512 + 1:
            idx = 4 * participants[address(msg.sender)].field_512 + 1
            while 4 * participants[address(msg.sender)].field_512 > idx:
                participants[address(msg.sender)][idx + 2].field_0 = 0
                participants[address(msg.sender)][idx + 2].field_256 = 0
                participants[address(msg.sender)][idx + 2].field_512 = 0
                participants[address(msg.sender)][idx + 2].field_768 = 0
                idx = idx + 1
                continue 
        participants[address(msg.sender)].field_0++
        participants[address(msg.sender)].field_256++
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = msg.value
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 = block.timestamp
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = sub_1d9df585
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + sub_c8d77ce0
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        participants[address(msg.sender)].field_512++
        if not participants[address(msg.sender)].field_512 <= participants[address(msg.sender)].field_512 + 1:
            idx = 4 * participants[address(msg.sender)].field_512 + 1
            while 4 * participants[address(msg.sender)].field_512 > idx:
                participants[address(msg.sender)][idx + 2].field_0 = 0
                participants[address(msg.sender)][idx + 2].field_256 = 0
                participants[address(msg.sender)][idx + 2].field_512 = 0
                participants[address(msg.sender)][idx + 2].field_768 = 0
                idx = idx + 1
                continue 
        participants[address(msg.sender)].field_0++
        participants[address(msg.sender)].field_256++
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = msg.value
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 = block.timestamp
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = sub_1d9df585
        require participants[address(msg.sender)].field_512 < participants[address(msg.sender)].field_512
        stor[(4 * participants[address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + sub_c8d77ce0
}

function sub_01e210b7(?) payable {
    if participants[address(msg.sender)].field_256 > 0:
        require arg1 - 1 < participants[address(msg.sender)].field_512
        if 10^15 * arg2 <= stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
            if stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 != 0:
                if stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 <= block.timestamp:
                    if eth.balance(this.address) >= (10^15 * arg2) + ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600):
                        call msg.sender with:
                           value (10^15 * arg2) + ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) - ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100) wei
                             gas 0 wei
                        call address(owner) with:
                           value (10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100 wei
                             gas 0 wei
                        if 10^15 * arg2 == stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
                            participants[address(msg.sender)].field_256--
                        require arg1 - 1 < participants[address(msg.sender)].field_512
                        stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 += -1 * 10^15 * arg2
}

function sub_62b3f820(?) payable {
    if participants[address(msg.sender)].field_256 > 0:
        if arg2:
            require arg1 - 1 < participants[address(msg.sender)].field_512
            if stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
                if stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 <= block.timestamp:
                    if eth.balance(this.address) >= (block.timestamp * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100:
                        call address(owner) with:
                           value (block.timestamp * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100 wei
                             gas 0 wei
                        stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = ((block.timestamp * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) + stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 - ((block.timestamp * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100)
                        stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 = block.timestamp
                        stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + sub_c8d77ce0
                        if sub_1d9df585 > stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512:
                            stor[(4 * arg1 - 1) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = sub_1d9df585
                        require arg1 - 1 < participants[address(msg.sender)].field_512
}

function sub_f4fd191b(?) payable {
    if participants[address(msg.sender)].field_256 > 0:
        if arg1:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = 0
            w = eth.balance(this.address)
            while idx < participants[address(msg.sender)].field_512:
                mem[0] = sha3(address(msg.sender), 0) + 2
                if not stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                require idx < participants[address(msg.sender)].field_512
                mem[0] = sha3(address(msg.sender), 0) + 2
                if stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 > block.timestamp:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                require idx < participants[address(msg.sender)].field_512
                mem[0] = sha3(address(msg.sender), 0) + 2
                if w < stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600):
                    s = s
                    t = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                    u = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600
                    v = block.timestamp - stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                    w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                call msg.sender with:
                   value stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) - ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100) wei
                     gas 0 wei
                call address(owner) with:
                   value (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100 wei
                     gas 0 wei
                require idx < participants[address(msg.sender)].field_512
                stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = 0
                mem[0] = msg.sender
                mem[32] = 0
                participants[address(msg.sender)].field_256--
                s = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100
                t = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                u = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600
                v = block.timestamp - stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                idx = idx + 1
                w = w - stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 - ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                continue 
}

function sub_920b1670(?) payable {
    if participants[address(msg.sender)].field_256 > 0:
        if arg1:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = 0
            w = eth.balance(this.address)
            while idx < participants[address(msg.sender)].field_512:
                mem[0] = sha3(address(msg.sender), 0) + 2
                if not stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                require idx < participants[address(msg.sender)].field_512
                mem[0] = sha3(address(msg.sender), 0) + 2
                if stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 > block.timestamp:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                require idx < participants[address(msg.sender)].field_512
                mem[0] = sha3(address(msg.sender), 0) + 2
                if w < (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100:
                    s = s
                    t = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100
                    u = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600
                    v = block.timestamp - stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                    w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                call address(owner) with:
                   value (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100 wei
                     gas 0 wei
                require idx < participants[address(msg.sender)].field_512
                stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600) + stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 - ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100)
                stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 = block.timestamp
                stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + sub_c8d77ce0
                require idx < participants[address(msg.sender)].field_512
                if sub_1d9df585 <= stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512:
                else:
                    stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = sub_1d9df585
                mem[32] = 0
                require idx < participants[address(msg.sender)].field_512
                mem[0] = sha3(address(msg.sender), 0) + 2
                s = ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600) + stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                t = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100
                u = (block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600
                v = block.timestamp - stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                w = stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                idx = idx + 1
                w = w - ((block.timestamp * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) - (stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0))) + (4 * idx)].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100)
                continue 
}



}
