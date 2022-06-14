contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    uint8(stor0.field_0) = 0
    emit 0xb96a5204: msg.sender, 0
    stor1 = code.data[5161 len 32]
    stor2 = code.data[5193 len 32]
    stor3 = code.data[5193 len 32]
    stor4 = code.data[5225 len 32]
    return code.data[251 len 4910]
}



// =====================  Runtime code  =====================


uint8 _auth_mode;
address _authorityAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of struct actionStatus;
mapping of uint8 stor7;
array of struct stor8;
mapping of uint8 isMember;

function isMember(address arg1) payable {
    return isMember[address(arg1)]
}

function _authority() payable {
    return _authorityAddress
}

function _auth_mode() payable {
    return _auth_mode
}

function getActionStatus(uint256 arg1) payable {
    return actionStatus[arg1].field_768, 
           actionStatus[arg1].field_1024,
           actionStatus[arg1].field_1280,
           actionStatus[arg1].field_0,
           actionStatus[arg1].field_512
}

function getInfo() payable {
    return stor1, stor2, stor4, stor5
}

function _fallback() payable {
    stor8[address(msg.sender)].field_0 = (2 * calldata.size) + 1
    s = 0
    idx = 0
    while calldata.size > idx:
        stor8[address(msg.sender)][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, calldata.size + 31) >> 5
    while stor8[address(msg.sender)].length + 31 / 32 > idx:
        stor8[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function propose(address arg1, bytes arg2, uint256 arg3) payable {
    stor5++
    actionStatus[stor5].field_0 = arg1
    actionStatus[stor5][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    actionStatus[stor5].field_512 = arg3
    actionStatus[stor5].field_768 = 0
    actionStatus[stor5].field_1024 = block.timestamp + stor4
    actionStatus[stor5].field_1280 = 0
    actionStatus[stor5].field_1536 = 0
    emit Proposed(Array(len=arg2.length, data=arg2[all]), stor5);
    return stor5
}

function updateAuthority(address arg1, uint8 arg2) payable {
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    uint256(stor0.field_0) = arg2 or Mask(248, 8, uint256(stor0.field_0))
    emit 0xb96a5204: arg1, arg2
}

function easyPropose(address arg1, uint256 arg2) payable {
    mem[128] = stor8[address(msg.sender)].field_0
    idx = 128
    s = 0
    while stor8[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = stor8[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor5++
    actionStatus[stor5].field_0 = arg1
    actionStatus[stor5][1][].field_0 = Array(len=stor8[address(msg.sender)].length, data=mem[128 len stor8[address(msg.sender)].length])
    actionStatus[stor5].field_512 = arg2
    actionStatus[stor5].field_768 = 0
    actionStatus[stor5].field_1024 = block.timestamp + stor4
    actionStatus[stor5].field_1280 = 0
    actionStatus[stor5].field_1536 = 0
    emit Proposed(Array(len=stor8[address(msg.sender)].length, data=mem[128 len stor8[address(msg.sender)].length]), stor5);
    return stor5
}

function addMember(address arg1) payable {
    if not _auth_mode:
        require msg.sender == _authorityAddress
    else:
        require _auth_mode == 1
        call _authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
             gas gas_remaining - 25050 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    require not isMember[address(arg1)]
    isMember[address(arg1)] = 1
    emit MemberAdded(arg1);
    stor3--
    if not stor3:
        if not _auth_mode:
            require msg.sender == _authorityAddress
        else:
            require _auth_mode == 1
            call _authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 25050 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
        _authorityAddress = 0
        _auth_mode = 0
        emit 0xb96a5204 
        emit 0x0 
        emit 0x0 
}

function confirm(uint256 arg1) payable {
    require isMember[address(msg.sender)]
    require not stor7[arg1][address(msg.sender)]
    require arg1 <= stor5
    require block.timestamp <= actionStatus[arg1].field_1024
    require not actionStatus[arg1].field_1280
    stor7[arg1][address(msg.sender)] = 1
    actionStatus[arg1].field_768++
    actionStatus[arg1].field_0 = actionStatus[arg1].field_0
    if 31 >= actionStatus[arg1][1].length:
        idx = 0
        while actionStatus[arg1][1].length + 31 / 32 > idx:
            actionStatus[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        actionStatus[arg1].field_256 = Mask(255, 1, (256 * not actionStatus[arg1].field_256) - 1 and actionStatus[arg1].field_256) + 1
        if not Mask(255, 1, (256 * not actionStatus[arg1].field_256) - 1 and actionStatus[arg1].field_256):
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][s + 1].field_0 = actionStatus[arg1][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = actionStatus[arg1][1].length + 31 / 32
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    actionStatus[arg1].field_1280 = actionStatus[arg1].field_1280
    emit Confirmed(msg.sender, arg1);
    return 0
}

function trigger(uint256 arg1) payable {
    mem[32] = 6
    require actionStatus[arg1].field_768 >= stor1
    require block.timestamp <= actionStatus[arg1].field_1024
    require not actionStatus[arg1].field_1280
    require eth.balance(this.address) >= actionStatus[arg1].field_512
    actionStatus[arg1].field_1280 = 1
    mem[128] = actionStatus[arg1][1].field_0
    idx = 128
    s = 0
    while actionStatus[arg1][1].length + 96 > idx:
        mem[idx + 32] = actionStatus[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(actionStatus[arg1][1].length) + 128 len actionStatus[arg1][1].length] = mem[128 len actionStatus[arg1][1].length]
    if not actionStatus[arg1][1].length % 32:
        call actionStatus[arg1].field_0.mem[ceil32(actionStatus[arg1][1].length) + 128 len 4] with:
           value actionStatus[arg1].field_512 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(actionStatus[arg1][1].length) + 132 len actionStatus[arg1][1].length - 4]
    else:
        mem[floor32(actionStatus[arg1][1].length) + ceil32(actionStatus[arg1][1].length) + 128] = mem[floor32(actionStatus[arg1][1].length) + ceil32(actionStatus[arg1][1].length) + -actionStatus[arg1][1].length % 32 + 160 len actionStatus[arg1][1].length % 32]
        call actionStatus[arg1].field_0.mem[ceil32(actionStatus[arg1][1].length) + 128 len 4] with:
           value actionStatus[arg1].field_512 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(actionStatus[arg1][1].length) + 132 len floor32(actionStatus[arg1][1].length) + 28]
    require ext_call.success
    actionStatus[arg1].field_0 = actionStatus[arg1].field_0
    if 31 >= actionStatus[arg1][1].length:
        idx = 0
        while actionStatus[arg1][1].length + 31 / 32 > idx:
            actionStatus[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        actionStatus[arg1].field_256 = Mask(255, 1, (256 * not actionStatus[arg1].field_256) - 1 and actionStatus[arg1].field_256) + 1
        if not Mask(255, 1, (256 * not actionStatus[arg1].field_256) - 1 and actionStatus[arg1].field_256):
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][s + 1].field_0 = actionStatus[arg1][idx + 1].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = actionStatus[arg1][1].length + 31 / 32
            while actionStatus[arg1][1].length + 31 / 32 > idx:
                actionStatus[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    actionStatus[arg1].field_1280 = actionStatus[arg1].field_1280
    emit Triggered(arg1);
}



}
