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
    stor3 = 1000
    stor4 = 0
    stor5 = msg.sender or Mask(96, 160, stor5)
    return code.data[57 len 1920]
}



// =====================  Runtime code  =====================


uint256 sub_4c1a4115;
uint256 balance;
uint256 sub_1d9df585;
uint256 sub_70c938cf;
address owner;
uint256 stor5;

function participants(address arg1) payable {
    return participants[arg1].field_0
}

function sub_1d9df585(?) payable {
    return sub_1d9df585
}

function sub_4c1a4115(?) payable {
    return sub_4c1a4115
}

function sub_70c938cf(?) payable {
    return sub_70c938cf
}

function owner() payable {
    return address(owner)
}

function balance() payable {
    return balance
}

function sub_0181fbc2(?) payable {
    if msg.sender == address(owner):
        sub_4c1a4115 = arg1
}

function ChangeTimeout(uint256 arg1) payable {
    if msg.sender == address(owner):
        sub_70c938cf = arg1
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
        balance += -1 * 10^15 * arg2
}

function Deposit() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
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
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = sub_1d9df585
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + (24 * 3600 * sub_70c938cf)
}

function _fallback() payable {
    if msg.value < 10^15:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        balance += msg.value
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
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512 = sub_1d9df585
        require participants[address(msg.sender)].field_256 < participants[address(msg.sender)].field_256
        stor[(4 * participants[address(msg.sender)].field_256) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 = block.timestamp + (24 * 3600 * sub_70c938cf)
}

function sub_01e210b7(?) payable {
    if participants[address(msg.sender)].field_0 > 0:
        balance += msg.value
        require arg1 - 1 < participants[address(msg.sender)].field_256
        if 10^15 * arg2 <= stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
            if stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 != 0:
                require arg1 - 1 < participants[address(msg.sender)].field_256
                if stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 <= block.timestamp:
                    require arg1 - 1 < participants[address(msg.sender)].field_256
                    if eth.balance(this.address) >= (10^15 * arg2) + ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600):
                        call msg.sender with:
                           value (10^15 * arg2) + ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) - ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100) wei
                             gas 0 wei
                        call address(owner) with:
                           value (10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100 wei
                             gas 0 wei
                        require arg1 - 1 < participants[address(msg.sender)].field_256
                        stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 += -1 * 10^15 * arg2
                        balance = balance - (10^15 * arg2) - ((10^15 * block.timestamp * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (10^15 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * arg2 * stor[(4 * arg1 - 1) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
}

function sub_3c128873(?) payable {
    if participants[address(msg.sender)].field_0 > 0:
        balance += msg.value
        if arg1:
            s = 0
            t = 0
            u = 0
            v = 0
            w = 0
            idx = 0
            w = eth.balance(this.address)
            while idx < participants[address(msg.sender)].field_256:
                mem[0] = sha3(address(msg.sender), 0) + 1
                if not stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                require idx < participants[address(msg.sender)].field_256
                mem[0] = sha3(address(msg.sender), 0) + 1
                if stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_768 > block.timestamp:
                    s = s
                    t = t
                    u = u
                    v = v
                    w = stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                require idx < participants[address(msg.sender)].field_256
                mem[0] = sha3(address(msg.sender), 0) + 1
                if w < stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600):
                    s = s
                    t = stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                    u = (block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600
                    v = block.timestamp - stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                    w = stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                    idx = idx + 1
                    w = w
                    continue 
                call msg.sender with:
                   value stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600) - ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100) wei
                     gas 0 wei
                call address(owner) with:
                   value (block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100 wei
                     gas 0 wei
                mem[32] = 0
                require idx < participants[address(msg.sender)].field_256
                mem[0] = sha3(address(msg.sender), 0) + 1
                stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 = 0
                balance = balance - stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 - ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                s = (block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600 * sub_4c1a4115 / 100
                t = stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 + ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                u = (block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600
                v = block.timestamp - stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256
                w = stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0
                idx = idx + 1
                w = w - stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 - ((block.timestamp * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) - (stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_256 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_0 * stor[(4 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'participants', 0)))].field_512) / 100 / 720 * 24 * 3600)
                continue 
}



}
