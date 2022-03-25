contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    require msg.sender == address(stor0)
    if code.data[7908 len 32]:
        stor1 = code.data[7908 len 32]
    else:
        stor1 = 1
    stor2 = code.data[7940 len 32]
    emit 0x4e5482c9: stor1, stor2
    return code.data[321 len 7587]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 numProposals;
uint8 stor5;
uint256 stor5;
uint256 totalSupply;
uint256 buyPrice;
uint256 sub_b1c7a623;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor11;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[384] = uint256(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length, data=mem[384 len stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + (floor32(stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length - 1) + -stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           bool(uint8(proposals[arg1].field_1024)),
           bool(uint8(proposals[arg1].field_1032)),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536)
}

function totalSupply() {
    return totalSupply
}

function sub_2c51302a(?) {
    return bool(uint8(stor5))
}

function numProposals() {
    return numProposals
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function minimumQuorum() {
    return minimumQuorum
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return address(owner)
}

function sub_b1c7a623(?) {
    return sub_b1c7a623
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function sub_9c243f14(?) {
    require msg.sender == address(owner)
    sub_b1c7a623 = arg1
}

function setMinBalance(uint256 arg1) {
    require msg.sender == address(owner)
    stor11 = 10^15 * arg1
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_9dda87ac(?) {
    require msg.sender == address(owner)
    uint256(stor5) = arg1 or Mask(248, 8, uint256(stor5))
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_4a501381(?) {
    if eth.balance(msg.sender) >= stor11:
    call msg.sender with:
       value stor11 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < proposals.length
    return (uint256(proposals[arg1].field_1536) == sha3(arg2, arg3, arg4[all]))
}

function changeVotingRules(uint256 arg1, uint256 arg2) {
    require msg.sender == address(owner)
    if arg1:
        minimumQuorum = arg1
    else:
        minimumQuorum = 1
    debatingPeriodInMinutes = arg2
    emit 0x4e5482c9: minimumQuorum, debatingPeriodInMinutes
}

function buy() {
    require uint8(stor5)
    require sub_b1c7a623
    call address(owner) with:
       value msg.value / sub_b1c7a623 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    totalSupply += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if eth.balance(msg.sender) >= stor11:
        return 1
    call msg.sender with:
       value stor11 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function vote(uint256 arg1, bool arg2) {
    require balanceOf[address(msg.sender)]
    require arg1 < proposals.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0)) != 1
    uint256(proposals[arg1].field_1792)++
    if not uint256(proposals[arg1].field_1792) <= uint256(proposals[arg1].field_1792) + 1:
        idx = uint256(proposals[arg1].field_1792) + 1
        while uint256(proposals[arg1].field_1792) > idx:
            uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0) = 0
            address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_1792) < uint256(proposals[arg1].field_1792)
    uint256(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0) = arg2 or Mask(248, 8, uint256(stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0))
    Mask(248, 0, stor[uint256(proposals[arg1].field_1792) + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8) = Mask(248, 0, msg.sender)
    uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1280) = uint256(proposals[arg1].field_1792) + 1
    emit Voted(arg1, arg2, msg.sender);
    if eth.balance(msg.sender) >= stor11:
        return uint256(proposals[arg1].field_1792)
    call msg.sender with:
       value stor11 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return uint256(proposals[arg1].field_1792)
}

function sub_dfe12c31(?) {
    require msg.sender == address(owner)
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 3
        idx = (9 * proposals.length) + 9
        while sha3(3) + (9 * proposals.length) > idx + sha3(mem[0]):
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
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7].field_0) > s:
                uint8(stor[s].field_0) = 0
                address(stor[s].field_8) = 0
                s = s + 1
                continue 
            idx = idx + 9
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_0) = address(owner)
    uint256(proposals[proposals.length].field_256) = arg1
    uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(proposals[proposals.length].field_1536) = sha3(address(owner), arg1, arg3[all])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(owner), arg1, Array(len=arg2.length, data=arg2[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function executeProposal(uint256 arg1, bytes arg2) {
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_768)
    require not uint8(proposals[arg1].field_1024)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(proposals[arg1].field_1536) == sha3(address(proposals[arg1].field_0), uint256(proposals[arg1].field_256), arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(proposals[arg1].field_1792):
        mem[0] = address(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_8)
        mem[32] = 9
        if not uint8(stor[idx + sha3((9 * arg1) + ('name', 'proposals', 3) + 7)].field_0):
            s = balanceOf[address(stor[idx + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0)]
            s = idx + sha3((9 * arg1) + sha3(3) + 7)
            idx = idx + 1
            s = s
            t = t + balanceOf[address(stor[idx + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0)]
            continue 
        s = balanceOf[address(stor[idx + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0)]
        s = idx + sha3((9 * arg1) + sha3(3) + 7)
        idx = idx + 1
        s = s + balanceOf[address(stor[idx + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0)]
        t = t + balanceOf[address(stor[idx + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0)]
        continue 
    require t > minimumQuorum
    if s <= 0:
        uint8(proposals[arg1].field_1032) = 0
    else:
        uint8(proposals[arg1].field_1024) = 1
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(proposals[arg1].field_0) with:
               funct uint32(proposals[arg1].field_32)
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_0) with:
               funct uint32(proposals[arg1].field_32)
               value 10^18 * uint256(proposals[arg1].field_256) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1032) = 1
    emit ProposalTallied(arg1, 0, t, bool(uint8(proposals[arg1].field_1032)));
    return 0
}



}
