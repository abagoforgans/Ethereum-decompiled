contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
address stor2;
uint256 sub_85559977;
uint256 numTickets;
uint256 sub_fb64bd6a;
uint256 maxTicketAmount;
uint256 sub_efdadb27;
uint256 sub_76a5b8ca;
uint256 sub_a0ef79ba;
uint256 sub_85563a23;
uint256 factor;
uint8 stor12;
uint8 stor12; offset 8
address stor12; offset 16
uint256 stor12; offset 8
address stor13;
address stor14;
mapping of struct ticket;
uint256 stor16;

function numTickets() {
    return numTickets
}

function getFactor() {
    return factor
}

function sub_76a5b8ca(?) {
    return sub_76a5b8ca
}

function getTicket(uint256 arg1) {
    return ticket[arg1].field_0, ticket[arg1].field_256
}

function sub_85559977(?) {
    return sub_85559977
}

function sub_85563a23(?) {
    return sub_85563a23
}

function owner() {
    return owner
}

function sub_a0ef79ba(?) {
    return sub_a0ef79ba
}

function maxTicketAmount() {
    return maxTicketAmount
}

function sub_efdadb27(?) {
    return sub_efdadb27
}

function sub_fb64bd6a(?) {
    return sub_fb64bd6a
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function claimOwnership() {
    require msg.sender == stor2
    owner = stor2
    return 1
}

function sub_373aad6c(?) {
    return bool(uint8(stor12.field_0)), bool(uint8(stor12.field_8))
}

function sub_4f2b39a2(?) {
    require msg.sender == owner
    sub_85559977 = arg1
    return 1
}

function sub_7273906d(?) {
    require msg.sender == owner
    if ext_code.size(arg1):
        stor14 = arg1
}

function sub_7a45828c(?) {
    require msg.sender == owner
    if ext_code.size(arg1):
        stor13 = arg1
}

function sub_8bd3ab1b(?) {
    require msg.sender == owner
    uint8(stor12.field_0) = 0
    emit 0x5aad9e81 
}

function sub_b79a9f54(?) {
    require msg.sender == owner
    uint8(stor12.field_0) = 1
    emit 0xbc8bb2ec 
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_985df50a(?) {
    require msg.sender == owner
    Mask(248, 0, stor12.field_8) = 1
    emit 0xf16d2adc 
}

function sub_f3ba90a0(?) {
    require msg.sender == owner
    Mask(248, 0, stor12.field_8) = 0
    emit 0x6b02d648 
}

function sub_00b65782(?) {
    require msg.sender == owner
    emit 0x6f87cece: sub_a0ef79ba, arg1
    sub_a0ef79ba = arg1
    return 1
}

function sub_25dd4db9(?) {
    require msg.sender == owner
    emit 0xc4ca19e9: sub_efdadb27, arg1
    sub_efdadb27 = arg1
    return 1
}

function sub_767d1205(?) {
    require msg.sender == owner
    emit 0xc5d497a5: sub_fb64bd6a, arg1
    sub_fb64bd6a = arg1
    return 1
}

function sub_83bbaa2a(?) {
    require msg.sender == owner
    emit 0xeb70a155: sub_85563a23, arg1
    sub_85563a23 = arg1
    return 1
}

function sub_f07dc97c(?) {
    require msg.sender == owner
    emit 0xe6ea1f4a: sub_76a5b8ca, arg1
    sub_76a5b8ca = arg1
    return 1
}

function upgradeEvilMorty(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1):
        address(stor12.field_16) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSuperContract(address arg1) {
    if not ext_code.size(arg1):
        return 0
    if stor1[address(arg1)] != 1:
        return 0
    return 1
}

function addContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function sub_f80983af(?) {
    require msg.sender == owner
    require arg1 > sub_fb64bd6a
    emit 0x1d4a7d94: maxTicketAmount, arg1
    maxTicketAmount = arg1
    return 1
}

function sub_56a51a07(?) {
    require arg5
    emit 0xbe8ec654: arg1, arg2, arg3, arg4, arg5, sha3(arg1, arg2, arg3, arg4) % arg5
    return (sha3(arg1, arg2, arg3, arg4) % arg5)
}

function sub_82e4a802(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    Mask(248, 0, stor12.field_8) = 0
    uint8(stor12.field_0) = 0
    emit 0xc5fbdd9e 
}

function startPortalGun() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    Mask(248, 0, stor12.field_8) = 1
    uint8(stor12.field_0) = 1
    emit 0x53f7f3bd 
}

function getNumOfRickHolders() {
    require ext_code.size(stor13)
    call stor13.0xcc642cc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw() {
    require msg.sender == owner
    emit Withdraw(eth.balance(this.address), msg.sender);
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfRick(address arg1) {
    require ext_code.size(stor13)
    call stor13.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfFlurbo(address arg1) {
    require ext_code.size(stor14)
    call stor14.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function resetRick() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require ext_code.size(stor13)
    call stor13.0xd826f88f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfMorty(address arg1) {
    require ext_code.size(address(stor12.field_16))
    call address(stor12.field_16).0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function startRick() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require ext_code.size(stor13)
    call stor13.0x5c3a4c3d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_8e11ed58(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require ext_code.size(stor13)
    call stor13.0x8e11ed58 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function stopPortalGunAndRick() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require ext_code.size(stor13)
    call stor13.0x8e11ed58 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor12.field_0) = 0
    Mask(248, 0, stor12.field_8) = 0
}

function addTicket(address arg1, uint256 arg2) {
    require msg.sender == owner
    if not sub_fb64bd6a:
        require arg2 >= 0
    else:
        require sub_fb64bd6a
        require 10^18 * sub_fb64bd6a / sub_fb64bd6a == 10^18
        require arg2 >= 10^18 * sub_fb64bd6a
    if not maxTicketAmount:
        require arg2 <= 0
    else:
        require maxTicketAmount
        require 10^18 * maxTicketAmount / maxTicketAmount == 10^18
        require arg2 <= 10^18 * maxTicketAmount
    require numTickets + 1 >= numTickets
    numTickets++
    ticket[stor4].field_0 = arg1
    ticket[stor4].field_256 = arg2 / 10^18
    emit TicketCreated(arg2, arg1);
    return 1
}

function participate(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require bool(uint8(stor12.field_0)) == 1
    if not sub_fb64bd6a:
        require arg2 >= 0
    else:
        require sub_fb64bd6a
        require 10^18 * sub_fb64bd6a / sub_fb64bd6a == 10^18
        require arg2 >= 10^18 * sub_fb64bd6a
    if not maxTicketAmount:
        require arg2 <= 0
    else:
        require maxTicketAmount
        require 10^18 * maxTicketAmount / maxTicketAmount == 10^18
        require arg2 <= 10^18 * maxTicketAmount
    require numTickets + 1 >= numTickets
    numTickets++
    ticket[stor4].field_0 = arg1
    ticket[stor4].field_256 = arg2 / 10^18
    emit TicketCreated(arg2, arg1);
}

function redeem(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require bool(uint8(stor12.field_8)) == 1
    if numTickets <= sub_85559977:
        s = 0
        idx = numTickets
        s = 0
        while idx > 0:
            require factor
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg1
            mem[mem[64] + 128] = factor
            mem[mem[64] + 160] = sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor
            emit 0xbe8ec654: idx, block.hash(block.number), block.timestamp, arg1, factor, sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor
            if sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor <= sub_76a5b8ca:
                mem[mem[64] + 4] = ticket[idx].field_0
                mem[mem[64] + 36] = ticket[idx].field_256
                require ext_code.size(stor13)
                call stor13.0x40c10f19 with:
                     gas gas_remaining wei
                    args ticket[idx].field_0, ticket[idx].field_256
            else:
                require sub_76a5b8ca + sub_efdadb27 >= sub_76a5b8ca
                if sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor > sub_76a5b8ca + sub_efdadb27:
                    mem[mem[64] + 4] = ticket[idx].field_0
                    mem[mem[64] + 36] = ticket[idx].field_256
                    require ext_code.size(stor14)
                    call stor14.0x40c10f19 with:
                         gas gas_remaining wei
                        args ticket[idx].field_0, ticket[idx].field_256
                else:
                    if not ticket[idx].field_256:
                        mem[mem[64] + 4] = ticket[idx].field_0
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(stor12.field_16))
                        call address(stor12.field_16).0x7132d337 with:
                             gas gas_remaining wei
                            args ticket[idx].field_0, 0
                    else:
                        require ticket[idx].field_256
                        require 2 * 10^18 * ticket[idx].field_256 / ticket[idx].field_256 == 2 * 10^18
                        mem[mem[64] + 4] = ticket[idx].field_0
                        mem[mem[64] + 36] = 2 * 10^18 * ticket[idx].field_256
                        require ext_code.size(address(stor12.field_16))
                        call address(stor12.field_16).0x7132d337 with:
                             gas gas_remaining wei
                            args ticket[idx].field_0, 2 * 10^18 * ticket[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = idx
            mem[32] = 15
            ticket[idx].field_0 = 0
            ticket[idx].field_256 = 0
            s = sha3(idx, 15)
            idx = idx - 1
            s = sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor
            continue 
        require numTickets <= numTickets
        numTickets = 0
        require stor16 + numTickets >= stor16
        stor16 += numTickets
    else:
        require sub_85559977 <= numTickets
        s = 0
        idx = numTickets
        s = 0
        while idx > numTickets - sub_85559977:
            require factor
            mem[mem[64] + 64] = block.timestamp
            mem[mem[64] + 96] = arg1
            mem[mem[64] + 128] = factor
            mem[mem[64] + 160] = sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor
            emit 0xbe8ec654: idx, block.hash(block.number), block.timestamp, arg1, factor, sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor
            if sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor <= sub_76a5b8ca:
                mem[mem[64] + 4] = ticket[idx].field_0
                mem[mem[64] + 36] = ticket[idx].field_256
                require ext_code.size(stor13)
                call stor13.0x40c10f19 with:
                     gas gas_remaining wei
                    args ticket[idx].field_0, ticket[idx].field_256
            else:
                require sub_76a5b8ca + sub_efdadb27 >= sub_76a5b8ca
                if sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor > sub_76a5b8ca + sub_efdadb27:
                    mem[mem[64] + 4] = ticket[idx].field_0
                    mem[mem[64] + 36] = ticket[idx].field_256
                    require ext_code.size(stor14)
                    call stor14.0x40c10f19 with:
                         gas gas_remaining wei
                        args ticket[idx].field_0, ticket[idx].field_256
                else:
                    if not ticket[idx].field_256:
                        mem[mem[64] + 4] = ticket[idx].field_0
                        mem[mem[64] + 36] = 0
                        require ext_code.size(address(stor12.field_16))
                        call address(stor12.field_16).0x7132d337 with:
                             gas gas_remaining wei
                            args ticket[idx].field_0, 0
                    else:
                        require ticket[idx].field_256
                        require 2 * 10^18 * ticket[idx].field_256 / ticket[idx].field_256 == 2 * 10^18
                        mem[mem[64] + 4] = ticket[idx].field_0
                        mem[mem[64] + 36] = 2 * 10^18 * ticket[idx].field_256
                        require ext_code.size(address(stor12.field_16))
                        call address(stor12.field_16).0x7132d337 with:
                             gas gas_remaining wei
                            args ticket[idx].field_0, 2 * 10^18 * ticket[idx].field_256
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[0] = idx
            mem[32] = 15
            ticket[idx].field_0 = 0
            ticket[idx].field_256 = 0
            s = sha3(idx, 15)
            idx = idx - 1
            s = sha3(idx, block.hash(block.number), block.timestamp, arg1) % factor
            continue 
        require sub_85559977 <= numTickets
        numTickets -= sub_85559977
        require stor16 + sub_85559977 >= stor16
        stor16 += sub_85559977
    if not numTickets:
        emit 0xef1fd577: block.timestamp, stor16
        stor16 = 0
}



}
