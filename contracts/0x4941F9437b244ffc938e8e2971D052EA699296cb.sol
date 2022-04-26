contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
array of uint256 stor15;
address stor16;

function _fallback() payable {
    mem[96 len -11454] = code.data[12157 len -11454]
    mem[64] = -11358
    stor0 = msg.sender
    stor15[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor12 = 400
    stor11 = 0
    stor5 = 0
    stor7 = 0
    stor8 = 0
    stor13 = 100
    create contract with 0 wei
                    code: code.data[9089 len 3068], 0, 96, 160, 10, 'IOInvtCoin', 3, 'IOs'
    require create.new_address
    stor16 = address(create.new_address)
    require stor0 == msg.sender
    stor1 = 51
    stor2 = 1440
    emit ChangeOfRules(51, 1440, stor16);
    stor9 = block.timestamp
    stor10 = block.timestamp
    stor14 = 1
    return code.data[703 len 8386]
}



// =====================  Runtime code  =====================


address owner;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 numProposals;
array of struct proposals;
uint256 sub_a3673b38;
uint256 sub_f6bb52de;
uint256 sub_ee3a2668;
uint256 sub_fe96d54f;
uint256 lastPaid;
uint256 sub_cb028a83;
uint256 sub_985cb59b;
uint256 ethPrice;
uint256 sub_284ffce9;
uint8 stor14;
array of uint256 name;
address sharesTokenAddress;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[416] = uint256(stor[sha3((10 * arg1) + ('name', 'proposals', 4) + 3)].field_0)
    idx = 416
    s = 0
    while stor[(10 * arg1) + ('name', 'proposals', 4) + 3].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + ('name', 'proposals', 4) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(proposals[arg1].field_0), 
           address(proposals[arg1].field_256),
           uint256(proposals[arg1].field_512),
           Array(len=stor[(10 * arg1) + ('name', 'proposals', 4) + 3].length, data=mem[416 len stor[(10 * arg1) + ('name', 'proposals', 4) + 3].length + (floor32(stor[(10 * arg1) + ('name', 'proposals', 4) + 3].length - 1) + -stor[(10 * arg1) + ('name', 'proposals', 4) + 3].length + 32 % 32)]),
           uint256(proposals[arg1].field_1024),
           bool(uint8(proposals[arg1].field_1280)),
           bool(uint8(proposals[arg1].field_1288)),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792)
}

function name() {
    return name[0 len name.length]
}

function sharesTokenAddress() {
    return sharesTokenAddress
}

function sub_284ffce9(?) {
    return sub_284ffce9
}

function numProposals() {
    return numProposals
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function minimumQuorum() {
    return minimumQuorum
}

function owner() {
    return owner
}

function sub_985cb59b(?) {
    return sub_985cb59b
}

function sub_a3673b38(?) {
    return sub_a3673b38
}

function lastPaid() {
    return lastPaid
}

function sub_c5f9301e(?) {
    return bool(stor14)
}

function sub_cb028a83(?) {
    return sub_cb028a83
}

function sub_ee3a2668(?) {
    return sub_ee3a2668
}

function sub_f6bb52de(?) {
    return sub_f6bb52de
}

function sub_fe96d54f(?) {
    return sub_fe96d54f
}

function ethPrice() {
    return ethPrice
}

function _fallback() payable {
  stop
}

function sub_bcb999ca(?) {
    require owner == msg.sender
    stor14 = 0
}

function sub_c3f81cc5(?) {
    require owner == msg.sender
    stor14 = 1
}

function sub_29174ded(?) {
    return (block.timestamp > lastPaid + (8760 * 24 * 3600))
}

function sub_9de13aec(?) {
    return (sub_cb028a83 + (240 * 24 * 3600) > block.timestamp)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function getProfits() {
    if sub_a3673b38 + sub_fe96d54f <= sub_f6bb52de + sub_ee3a2668:
        return 0
    return (sub_a3673b38 - sub_f6bb52de - sub_ee3a2668 + sub_fe96d54f)
}

function memberCount() {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.getMemberCount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_85d26337(?) {
    require owner == msg.sender
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_985cb59b += arg2 * ethPrice / 10^18
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
}

function changeVotingRules(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    if arg1:
        minimumQuorum = arg1
        debatingPeriodInMinutes = arg2
        emit ChangeOfRules(arg1, arg2, sharesTokenAddress);
    else:
        minimumQuorum = 1
        debatingPeriodInMinutes = arg2
        emit ChangeOfRules(1, arg2, sharesTokenAddress);
}

function DepositEth() payable {
    require stor14
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
    sub_ee3a2668 += ethPrice * msg.value / 10^18
    require 10^18 * sub_284ffce9
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10000 * ethPrice * msg.value / 10^18 * sub_284ffce9
    require ext_call.success
    emit 0x931b9170: msg.sender, msg.value
    return 1
}

function sub_377773f1(?) {
    require owner == msg.sender
    sub_985cb59b = arg1
    ethPrice = arg2
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
    if sub_a3673b38:
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        sub_284ffce9 = 10000 * sub_a3673b38 / ext_call.return_data[0]
    sub_cb028a83 = block.timestamp
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg1 < proposals.length
    mem[ceil32(arg4.length) + 128] = address(arg2)
    mem[ceil32(arg4.length) + 148] = arg3
    mem[ceil32(arg4.length) + 180 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 212 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    return (uint256(proposals[arg1].field_1792) == sha3(arg2, arg3, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 180 len arg4.length % 32]))
}

function sub_22076518(?) {
    require owner == msg.sender
    require stor14
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
    require sub_284ffce9
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10000 * arg2 / sub_284ffce9
    require ext_call.success
    sub_ee3a2668 += arg2
    sub_985cb59b += arg2
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
    if sub_a3673b38:
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        sub_284ffce9 = 10000 * sub_a3673b38 / ext_call.return_data[0]
    emit 0x35392fa7: address(arg1), arg2
    return 1
}

function withdraw(uint256 arg1) {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require sub_cb028a83 + (240 * 24 * 3600) > block.timestamp
    require 10000 * ethPrice
    require eth.balance(this.address) >= 10^18 * arg1 * sub_284ffce9 / 10000 * ethPrice
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x79cc6790 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    call msg.sender with:
       value 10^18 * arg1 * sub_284ffce9 / 10000 * ethPrice wei
         gas 2300 * is_zero(value) wei
    sub_fe96d54f += 10^18 * arg1 * sub_284ffce9 / 10000 * ethPrice * ethPrice / 10^18
    emit withdrew(msg.sender, arg1);
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
}

function vote(uint256 arg1, bool arg2) {
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    require arg1 < proposals.length
    require bool(uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0)) != 1
    require bool(uint8(proposals[arg1].field_1280)) != 1
    uint256(proposals[arg1].field_2048)++
    if not uint256(proposals[arg1].field_2048) <= uint256(proposals[arg1].field_2048) + 1:
        idx = uint256(proposals[arg1].field_2048) + 1
        while uint256(proposals[arg1].field_2048) > idx:
            Mask(168, 0, stor[idx + sha3((10 * arg1) + ('name', 'proposals', 4) + 8)].field_0) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_2048) < uint256(proposals[arg1].field_2048)
    uint8(stor[sha3((10 * arg1) + ('name', 'proposals', 4) + 8) + uint256(proposals[arg1].field_2048)].field_0) = uint8(arg2)
    address(stor[sha3((10 * arg1) + ('name', 'proposals', 4) + 8) + uint256(proposals[arg1].field_2048)].field_8) = msg.sender
    uint8(stor[(10 * arg1) + ('name', 'proposals', 4) + 9][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1536) = uint256(proposals[arg1].field_2048) + 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(proposals[arg1].field_2048)
}

function sub_a9205efe(?) {
    require owner == msg.sender
    require block.timestamp > lastPaid + (8760 * 24 * 3600)
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if sub_a3673b38 + sub_fe96d54f <= sub_f6bb52de + sub_ee3a2668:
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0] / 100
        require ext_call.success
        emit 0x8e86d836: (ext_call.return_data[0] / 100)
    else:
        if sub_a3673b38 - sub_f6bb52de - sub_ee3a2668 + sub_fe96d54f <= 0:
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0] / 100
            require ext_call.success
            emit 0x8e86d836: (ext_call.return_data[0] / 100)
        else:
            require sub_284ffce9
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (ext_call.return_data[0] / 100) + ((1000 * sub_a3673b38) - (1000 * sub_f6bb52de) - (1000 * sub_ee3a2668) + (1000 * sub_fe96d54f) / sub_284ffce9)
            require ext_call.success
            emit 0x8e86d836: ((ext_call.return_data[0] / 100) + ((1000 * sub_a3673b38) - (1000 * sub_f6bb52de) - (1000 * sub_ee3a2668) + (1000 * sub_fe96d54f) / sub_284ffce9))
    if sub_a3673b38:
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        sub_284ffce9 = 10000 * sub_a3673b38 / ext_call.return_data[0]
    sub_f6bb52de = sub_a3673b38
    sub_ee3a2668 = 0
    sub_fe96d54f = 0
    lastPaid = block.timestamp
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 4
        idx = (10 * proposals.length) + 10
        while sha3(4) + (10 * proposals.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint16(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(idx + sha3(mem[0]) + 8)
            while sha3(idx + sha3(mem[0]) + 8) + uint256(stor[idx + sha3(mem[0]) + 8]) > s:
                Mask(168, 0, stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 10
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = proposals.length
    address(proposals[proposals.length].field_256) = arg1
    uint256(proposals[proposals.length].field_512) = arg2
    uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 4) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 180] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 244 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, arg2, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212 len arg4.length % 32])
    uint256(proposals[proposals.length].field_1024) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint16(proposals[proposals.length].field_1280) = 0
    uint256(proposals[proposals.length].field_1536) = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function newProposalInEther(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 4
        idx = (10 * proposals.length) + 10
        while sha3(4) + (10 * proposals.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint16(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(idx + sha3(mem[0]) + 8)
            while sha3(idx + sha3(mem[0]) + 8) + uint256(stor[idx + sha3(mem[0]) + 8]) > s:
                Mask(168, 0, stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 10
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = proposals.length
    address(proposals[proposals.length].field_256) = arg1
    uint256(proposals[proposals.length].field_512) = 10^18 * arg2
    uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 4) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = address(arg1)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 180] = 10^18 * arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 244 len arg4.length % 32] = mem[ceil32(arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, 10^18 * arg2, call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 212 len arg4.length % 32])
    uint256(proposals[proposals.length].field_1024) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint16(proposals[proposals.length].field_1280) = 0
    uint256(proposals[proposals.length].field_1536) = 0
    emit ProposalAdded(proposals.length, address(arg1), 10^18 * arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp > uint256(proposals[arg1].field_1024)
    require not uint8(proposals[arg1].field_1280)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_256)
    mem[ceil32(arg2.length) + 148] = uint256(proposals[arg1].field_512)
    mem[ceil32(arg2.length) + 180 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 212 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    require uint256(proposals[arg1].field_1792) == sha3(address(proposals[arg1].field_256), uint256(proposals[arg1].field_512), call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 180 len arg2.length % 32])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < uint256(proposals[arg1].field_2048):
        mem[0] = (10 * arg1) + sha3(4) + 8
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((10 * arg1) + ('name', 'proposals', 4) + 8)].field_8)
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(stor[idx + sha3((10 * arg1) + ('name', 'proposals', 4) + 8)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((10 * arg1) + ('name', 'proposals', 4) + 8)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((10 * arg1) + sha3(4) + 8)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((10 * arg1) + sha3(4) + 8)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    mem[ceil32(arg2.length) + 160] = 0
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require t >= minimumQuorum
    uint8(proposals[arg1].field_1280) = 1
    if s <= 0:
        uint8(proposals[arg1].field_1288) = 0
    else:
        mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            call address(proposals[arg1].field_256).mem[ceil32(arg2.length) + 128 len 4] with:
               value uint256(proposals[arg1].field_512) wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_256).mem[ceil32(arg2.length) + 128 len 4] with:
               value uint256(proposals[arg1].field_512) wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(proposals[arg1].field_1288) = 1
        sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
    emit ProposalTallied(arg1, s, t, bool(uint8(proposals[arg1].field_1288)));
}

function distribute(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require owner == msg.sender
    require eth.balance(this.address) > arg1
    mem[128] = 0
    mem[96] = 0x997072f700000000000000000000000000000000000000000000000000000000
    require ext_code.size(sharesTokenAddress)
    call sharesTokenAddress.mem[var20003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var20003 + 4 len var20004 - 4]
    mem[var20005] = ext_call.return_data[0]
    require ext_call.success
    if var22004 < 0x997072f700000000000000000000000000000000000000000000000000000000:
        mem[128] = 0
        mem[96] = 0x6313ec9200000000000000000000000000000000000000000000000000000000
        mem[100] = var24001
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.mem[var26003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var26003 + 4 len var26004 - 4]
        mem[var26005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x18160ddd00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.mem[var30003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var30003 + 4 len var30004 - 4]
        mem[var30005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = address(var32006)
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.mem[var34003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var34003 + 4 len var34004 - 4]
        require ext_call.success
        require var36004
        call address(var38005) with:
           value var38001 / var38002 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xaef669ce: var38001 / var38002, address(var38005)
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.getMemberCount() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        idx = var38003
        s = var38001 / var38002
        s = var38005
        while idx + 1 < ext_call.return_data[0]:
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.0x6313ec92 with:
                 gas gas_remaining - 710 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            require ext_call.return_data[0]
            call address(ext_call.return_data[0]) with:
               value arg1 * ext_call.return_data[0] / ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0xaef669ce: arg1 * ext_call.return_data[0] / ext_call.return_data[0], address(ext_call.return_data[0])
            mem[128] = 0
            require ext_code.size(sharesTokenAddress)
            call sharesTokenAddress.getMemberCount() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            idx = idx + 1
            s = arg1 * ext_call.return_data[0] / ext_call.return_data[0]
            s = ext_call.return_data[0]
            continue 
    sub_fe96d54f += arg1 * ethPrice / 10^18
    sub_a3673b38 = (eth.balance(this.address) * ethPrice / 10^18) + sub_985cb59b
    if sub_a3673b38:
        require ext_code.size(sharesTokenAddress)
        call sharesTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        sub_284ffce9 = 10000 * sub_a3673b38 / ext_call.return_data[0]
}



}
