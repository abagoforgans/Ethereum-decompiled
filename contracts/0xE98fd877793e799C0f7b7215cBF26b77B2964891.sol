contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of uint256 stor7;
uint256 stor8;
array of uint256 stor9;
uint256 stor10;
array of uint256 stor11;
uint256 stor12;
array of uint256 stor13;
uint256 stor14;
array of uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    stor6 = 0
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'none' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    bool(stor9.length) = 0
    stor9.length.field_1 = 4
    stor9.length.field_8 = 'none' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 0
    bool(stor11.length) = 0
    stor11.length.field_1 = 4
    stor11.length.field_8 = 'none' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor12 = 0
    bool(stor13.length) = 0
    stor13.length.field_1 = 4
    stor13.length.field_8 = 'none' / 256
    idx = 0
    while stor13.length + 31 / 32 > idx:
        stor13[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor14 = 0
    bool(stor15.length) = 0
    stor15.length.field_1 = 4
    stor15.length.field_8 = 'none' / 256
    idx = 0
    while stor15.length + 31 / 32 > idx:
        stor15[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor16 = 0
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[15084 len 20]
    return code.data[1355 len 13717]
}



// =====================  Runtime code  =====================


#
#  - ValidateExec(string arg1)
#  - ListNotValSince(uint256 arg1)
#  - ListValSince(uint256 arg1)
#  - AddExec(string arg1)
#  - ListAllSince(uint256 arg1)
#
address _owner;
address _filiateAddress;
mapping of uint256 stor2;
array of struct stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
array of struct stor9;
uint256 stor10;
array of struct stor11;
uint256 stor12;
array of struct stor13;
uint256 stor14;
array of struct stor15;
uint256 stor16;
uint256 stor17;

function _filiate() {
    return _filiateAddress
}

function _owner() {
    return _owner
}

function kill() {
    require msg.sender == _owner
    selfdestruct(_owner)
}

function _fallback() payable {
    revert 
}

function CountExecs() {
    return stor4, stor6, stor5
}

function ChangeOwner(address arg1) {
    require msg.sender == _owner
    require eth.balance(arg1) > 0
    _owner = arg1
    emit Owner_Changed(_owner);
}

function ChangeFiliate(address arg1) {
    if _owner != msg.sender:
        require msg.sender == _filiateAddress
    require eth.balance(arg1) > 0
    _filiateAddress = arg1
    emit Filiate_Changed(_filiateAddress);
}

function LastExec() {
    mem[160] = uint256(stor11.field_0)
    idx = 160
    s = 0
    while stor11.length + 128 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor11.length, data=mem[160 len stor11.length]), stor12
}

function ListNotValidated() {
    mem[160] = uint256(stor9.field_0)
    idx = 160
    s = 0
    while stor9.length + 128 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor10, Array(len=stor9.length, data=mem[160 len stor9.length])
}

function ListValidated() {
    mem[160] = uint256(stor13.field_0)
    idx = 160
    s = 0
    while stor13.length + 128 > idx:
        mem[idx + 32] = stor13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor14, Array(len=stor13.length, data=mem[160 len stor13.length])
}

function LastValidated() {
    mem[160] = uint256(stor15.field_0)
    idx = 160
    s = 0
    while stor15.length + 128 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor15.length, data=mem[160 len stor15.length]), stor16, stor17
}

function CheckExec(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if _owner != msg.sender:
        require msg.sender == _filiateAddress
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    if stor2[arg1[all]] >= stor3.length:
        mem[ceil32(arg1.length) + 320 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            emit Checked(string rg1, bool rg2, uint256 rg3, bool rg4, uint256 rg5):
                         160,
                         0,
                         0,
                         0,
                         0,
                         arg1.length,
                         arg1[all],
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
            emit Checked(string rg1, bool rg2, uint256 rg3, bool rg4, uint256 rg5):
                         160,
                         0,
                         0,
                         0,
                         0,
                         arg1.length,
                         arg1[all],
                         mem[ceil32(arg1.length) + arg1.length + 320 len -(arg1.length % 32) + 32],
    else:
        mem[ceil32(arg1.length) + 128] = stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
        mem[ceil32(arg1.length) + 160] = stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0
        idx = ceil32(arg1.length) + 160
        s = 0
        while ceil32(arg1.length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 128 > idx:
            mem[idx + 32] = stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 160] = 0
        if stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length != arg1.length:
            mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416 len arg1.length] = arg1[all]
            if not arg1.length % 32:
                emit Checked(string rg1, bool rg2, uint256 rg3, bool rg4, uint256 rg5):
                             160,
                             0,
                             0,
                             0,
                             0,
                             arg1.length,
                             arg1[all],
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + -(arg1.length % 32) + 448 len arg1.length % 32]
                emit Checked(string rg1, bool rg2, uint256 rg3, bool rg4, uint256 rg5):
                             160,
                             0,
                             0,
                             0,
                             0,
                             arg1.length,
                             arg1[all],
                             mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + arg1.length + 416 len -(arg1.length % 32) + 32],
        else:
            idx = 0
            while idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length:
                require idx < arg1.length
                require idx < stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length
                if Mask(8, 248, mem[ceil32(arg1.length) + idx + 160]) == Mask(8, 248, mem[idx + 128]):
                    idx = idx + 1
                    continue 
                mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416 len arg1.length] = arg1[all]
                if not arg1.length % 32:
                    emit Checked(string rg1, bool rg2, uint256 rg3, bool rg4, uint256 rg5):
                                 160,
                                 0,
                                 0,
                                 0,
                                 0,
                                 arg1.length,
                                 arg1[all],
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + -(arg1.length % 32) + 448 len arg1.length % 32]
                    emit Checked(string rg1, bool rg2, uint256 rg3, bool rg4, uint256 rg5):
                                 160,
                                 0,
                                 0,
                                 0,
                                 0,
                                 arg1.length,
                                 arg1[all],
                                 mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + arg1.length + 416 len -(arg1.length % 32) + 32],
            require stor2[arg1[all]] < stor3.length
            mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416] = stor[sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_0
            idx = ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416
            s = 0
            while ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 416 > idx + 32:
                mem[idx + 32] = stor[s + sha3((4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1)].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit Checked(Array(len=stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length, data=mem[ceil32(arg1.length) + ceil32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length) + 416 len stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + (floor32(stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length - 1) + -stor[(4 * stor2[arg1[all]]) + ('name', 'stor3', 3) + 1].length + 32 % 32)]), 1, stor3[stor2[arg1[all]]].field_0, bool(stor3[stor2[arg1[all]]].field_512), stor3[stor2[arg1[all]]].field_768);
}



}
