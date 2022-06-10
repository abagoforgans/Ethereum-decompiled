contract main {




// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
address stor0;
uint256 stor0;
mapping of struct stor1;
array of uint256 stor2;
address owner;
array of struct stor4;
mapping of uint256 stor5;

function owner() {
    return owner
}

function sub_05e55053(?) {
    require msg.sender == owner
    selfdestruct(owner)
}

function sub_278e8ff5(?) {
    require msg.sender == owner
    owner = arg1
}

function sub_1f61db5e(?) payable {
    require msg.sender == owner
    stor4[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor5[address(arg1)] = msg.value
}

function giveRightToVote(address arg1) {
    require msg.sender == owner
    if msg.sender == address(stor0):
        if not stor1[address(arg1)].field_256:
            stor1[address(arg1)].field_0 = 1
}

function sub_1e9227cd(?) {
    require msg.sender == owner
    require eth.balance(this.address) > 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function vote(uint8 arg1) {
    require msg.sender == owner
    if not stor1[msg.sender].field_256:
        if arg1 < stor2.length:
            stor1[msg.sender].field_256 = 1
            stor1[msg.sender].field_264 = arg1
            stor1[msg.sender].field_512 = 0
            stor2[arg1].field_0 += stor1[msg.sender].field_0
}

function Ballot(uint8 arg1) {
    require msg.sender == owner
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(msg.sender)].field_0 = 1
    uint8(stor2.length) = arg1
    stor2.length.field_8 = 0
    if stor2.length > arg1:
        idx = arg1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function winningProposal() {
    require msg.sender == owner
    idx = 0
    s = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 <= s:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = stor2[uint8(idx)].field_0
        continue 
    return 0
}

function _fallback() payable {
    if gas_remaining > 10^6:
        mem[96] = stor4[msg.sender].field_0
        idx = 96
        s = 0
        while stor4[msg.sender].length + 96 > idx + 32:
            mem[idx + 32] = stor4[msg.sender][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call msg.sender.mem[96 len 4] with:
           value stor5[msg.sender] wei
             gas gas_remaining wei
            args mem[100 len stor4[msg.sender].length + (floor32(stor4[msg.sender].length - 1) + -stor4[msg.sender].length + 32 % 32) - 4]
}

function sub_dce8a9c6(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
}



}
