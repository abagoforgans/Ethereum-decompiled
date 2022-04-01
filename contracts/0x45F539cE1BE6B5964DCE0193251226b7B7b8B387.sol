contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2110]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct proposals;
uint256 stor3;
mapping of struct votes;

function proposals(uint256 arg1) {
    mem[224] = proposals[arg1].field_0
    idx = 224
    s = 0
    while proposals[arg1].length + 224 > idx + 32:
        mem[idx + 32] = proposals[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=proposals[arg1].length, data=mem[224 len proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32)]), 
           proposals[arg1].field_256,
           bool(proposals[arg1].field_512)
}

function votes(uint256 arg1) {
    mem[224] = votes[arg1][1].field_0
    idx = 224
    s = 0
    while votes[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = votes[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return votes[arg1].field_0, 
           Array(len=votes[arg1][1].length, data=mem[224 len votes[arg1][1].length + (floor32(votes[arg1][1].length - 1) + -votes[arg1][1].length + 32 % 32)]),
           votes[arg1].field_512
}

function owner() {
    return owner
}

function destruct() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function completeProposal(uint256 arg1) {
    require owner == msg.sender
    require arg1 < stor1
    proposals[arg1].field_512 = 1
}

function extract() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_920fae8a(?) {
    require owner == msg.sender
    require arg1 < stor1
    require not proposals[arg1].field_512
    proposals[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function createProposal(string arg1) {
    require owner == msg.sender
    stor1++
    proposals[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
    proposals[stor1].field_256 = 0
    proposals[stor1].field_512 = 0
}

function vote(uint256 arg1, string arg2) payable {
    require arg1 < stor1
    require not proposals[arg1].field_512
    proposals[arg1].field_256 += msg.value
    stor3++
    votes[stor3].field_0 = msg.sender
    votes[stor3][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    votes[stor3].field_512 = msg.value
}



}
