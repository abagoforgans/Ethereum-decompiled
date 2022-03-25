contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    require msg.sender == address(stor0)
    stor1 = code.data[4724 len 32]
    stor2 = code.data[4756 len 32]
    stor3 = code.data[4788 len 32]
    if code.data[4832 len 20]:
        uint256(stor0) = code.data[4820 len 32]
    return code.data[340 len 4384]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 stor1;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
array of struct proposals;
uint256 numProposals;
uint256 totalAmount;
mapping of uint256 balanceOf;
mapping of uint256 memberId;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[416] = uint256(stor[sha3((10 * arg1) + ('name', 'proposals', 4) + 2)].field_0)
    idx = 416
    s = 0
    while stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + ('name', 'proposals', 4) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length, data=mem[416 len stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + (floor32(stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length - 1) + -stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           bool(uint8(proposals[arg1].field_1024)),
           bool(uint8(proposals[arg1].field_1032)),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792)
}

function totalAmount() {
    return totalAmount
}

function memberId(address arg1) {
    return memberId[arg1]
}

function numProposals() {
    return numProposals
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function minimumQuorum() {
    return stor1.length
}

function owner() {
    return address(owner)
}

function majorityMargin() {
    return majorityMargin
}

function _fallback() {
    balanceOf[address(msg.sender)] = msg.value
    totalAmount += msg.value
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) {
    require msg.sender == address(owner)
    stor1.length = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < proposals.length
    return (uint256(proposals[arg1].field_1792) == sha3(arg2, arg3, arg4[all]))
}

function vote(uint256 arg1, bool arg2, string arg3) {
    require balanceOf[address(msg.sender)]
    require arg1 < proposals.length
    require bool(uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0)) != 1
    uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280)++
    if not arg2:
        uint256(proposals[arg1].field_1536)--
    else:
        uint256(proposals[arg1].field_1536)++
    return 0
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_768)
    require not uint8(proposals[arg1].field_1024)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(proposals[arg1].field_1792) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), arg2[all])
    require uint256(proposals[arg1].field_1280) >= stor1.length
    if uint256(proposals[arg1].field_1536) <= majorityMargin:
        uint8(proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(proposals[arg1].field_0) with:
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1032) = 1
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require balanceOf[address(msg.sender)]
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 4
        idx = (10 * proposals.length) + 10
        while sha3(4) + (10 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 4].field_8) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 8].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 8) + (2 * uint256(stor[idx + sha3(mem[0]) + 8].field_0)) > s:
                uint8(stor[s].field_0) = 0
                address(stor[s].field_8) = 0
                stor1[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 10
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = arg1 or Mask(96, 160, uint256(proposals[proposals.length].field_0))
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 4) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    numProposals = proposals.length + 1
    return proposals.length
}



}
