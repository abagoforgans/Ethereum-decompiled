contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2271]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalProposals;
array of struct proposals;
uint256 stor3;
mapping of struct votes;

function proposals(uint256 arg1) {
    mem[256] = proposals[arg1][1].field_0
    idx = 256
    s = 0
    while proposals[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = proposals[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return proposals[arg1].field_0, 
           Array(len=proposals[arg1][1].length, data=mem[256 len proposals[arg1][1].length + (floor32(proposals[arg1][1].length - 1) + -proposals[arg1][1].length + 32 % 32)]),
           proposals[arg1].field_512,
           bool(proposals[arg1].field_768)
}

function votes(uint256 arg1) {
    mem[256] = votes[arg1][1].field_0
    idx = 256
    s = 0
    while votes[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = votes[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return votes[arg1].field_0, 
           Array(len=votes[arg1][1].length, data=mem[256 len votes[arg1][1].length + (floor32(votes[arg1][1].length - 1) + -votes[arg1][1].length + 32 % 32)]),
           votes[arg1].field_512,
           votes[arg1].field_768
}

function owner() {
    return owner
}

function totalProposals() {
    return totalProposals
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
    require arg1 < totalProposals
    require not proposals[arg1].field_768
    proposals[arg1].field_768 = 1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_920fae8a(?) {
    require owner == msg.sender
    require arg1 < totalProposals
    require not proposals[arg1].field_768
    proposals[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function createProposal(string arg1) {
    require owner == msg.sender
    proposals[stor1].field_0 = totalProposals
    proposals[stor1][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    proposals[stor1].field_512 = 0
    proposals[stor1].field_768 = 0
    totalProposals++
}

function vote(uint256 arg1, string arg2) payable {
    require arg1 < totalProposals
    require not proposals[arg1].field_768
    require msg.value >= 10^15
    proposals[arg1].field_512 += msg.value / 10^15
    stor3++
    votes[stor3].field_0 = msg.sender
    votes[stor3][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    votes[stor3].field_512 = msg.value / 10^15
    votes[stor3].field_768 = arg1
}



}
