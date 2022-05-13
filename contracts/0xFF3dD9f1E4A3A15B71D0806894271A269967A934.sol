contract main {




// =====================  Runtime code  =====================


const name = 'CryptoFantasy'

const implementsERC721 = 1

const symbol = 'Athlete'

const NAME = 'CryptoFantasy'

const SYMBOL = 'Athlete'


mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address athleteIndexToApproved;
mapping of uint256 priceOf;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of address stor6;
array of uint256 stor7;
mapping of uint8 stor8;
address ceoAddress;
address cooAddress;
uint256 promoCreatedCount;
array of struct stor12;
mapping of struct stor13;

function athleteIndexToOwner(uint256 arg1) {
    return ownerOf[arg1]
}

function promoCreatedCount() {
    return promoCreatedCount
}

function ceoAddress() {
    return ceoAddress
}

function totalSupply() {
    return stor12.length
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function cooAddress() {
    return cooAddress
}

function priceOf(uint256 arg1) {
    return priceOf[arg1]
}

function athleteIndexToApproved(uint256 arg1) {
    return athleteIndexToApproved[arg1]
}

function sub_f44f19ec(?) {
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require msg.sender == ownerOf[arg2]
    athleteIndexToApproved[arg2] = arg1
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == ownerOf[arg2]
    require arg1
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        athleteIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, address(arg1), arg2);
}

function takeOwnership(uint256 arg1) {
    require msg.sender
    require athleteIndexToApproved[arg1] == msg.sender
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    if ownerOf[arg1]:
        balanceOf[stor0[arg1]]--
        athleteIndexToApproved[arg1] = 0
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1 == ownerOf[arg3]
    require athleteIndexToApproved[arg3] == arg2
    require arg2
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        athleteIndexToApproved[arg3] = 0
    emit Transfer(address(arg1), address(arg2), arg3);
}

function payout(address arg1) {
    if ceoAddress != msg.sender:
        require msg.sender == cooAddress
    if arg1:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call ceoAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAthlete(uint256 arg1) {
    require arg1 < stor12.length
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[(6 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    return Array(len=stor12[arg1].length, data=mem[128 len stor12[arg1].length]), 
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           stor12[arg1].field_768,
           priceOf[arg1],
           ownerOf[arg1]
}

function changeOriginWalletIdForAthlete(uint256 arg1, address arg2) {
    require msg.sender == cooAddress
    stor6[arg1] = arg2
    require arg1 < stor12.length
    stor12[arg1].field_256 = arg2
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[(6 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    return Array(len=stor12[arg1].length, data=mem[128 len stor12[arg1].length]), 
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           stor12[arg1].field_768,
           priceOf[arg1],
           ownerOf[arg1]
}

function changeSellPriceForAthlete(uint256 arg1, uint256 arg2) {
    require msg.sender == cooAddress
    priceOf[arg1] = arg2
    require arg1 < stor12.length
    stor12[arg1].field_1024 = arg2
    mem[128] = stor12[arg1].field_0
    idx = 128
    s = 0
    while stor12[arg1].length + 96 > idx:
        mem[idx + 32] = stor12[(6 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ownerOf[arg1]
    return Array(len=stor12[arg1].length, data=mem[128 len stor12[arg1].length]), 
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           stor12[arg1].field_768,
           stor12[arg1].field_1024,
           ownerOf[arg1]
}

function tokenOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[11918 len 32 * balanceOf[address(arg1)]]
    idx = 0
    s = 0
    while idx <= stor12.length:
        mem[0] = idx
        mem[32] = 0
        if ownerOf[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}

function createContractOfAthlete(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == cooAddress
    stor12.length++
    stor12[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    if arg5 > 0:
        if arg2:
            stor12[stor12.length].field_256 = arg2
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = arg5
            stor12[stor12.length].field_1280 = 1
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = arg5
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = arg2
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = arg2
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = arg5
            stor13[stor12.length].field_1280 = 1
            stor8[stor12.length] = 1
        else:
            stor12[stor12.length].field_256 = ceoAddress
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = arg5
            stor12[stor12.length].field_1280 = 0
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = arg5
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = ceoAddress
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = ceoAddress
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = arg5
            stor13[stor12.length].field_1280 = 0
            stor8[stor12.length] = 0
    else:
        if arg2:
            stor12[stor12.length].field_256 = arg2
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = 10^15
            stor12[stor12.length].field_1280 = 1
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = 10^15
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = arg2
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = arg2
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = 10^15
            stor13[stor12.length].field_1280 = 1
            stor8[stor12.length] = 1
        else:
            stor12[stor12.length].field_256 = ceoAddress
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = 10^15
            stor12[stor12.length].field_1280 = 0
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = 10^15
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = ceoAddress
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = ceoAddress
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = 10^15
            stor13[stor12.length].field_1280 = 0
            stor8[stor12.length] = 0
    balanceOf[address(this.address)]++
    ownerOf[stor12.length] = this.address
    emit Transfer(0, address(this.address), stor12.length);
}

function createOfAthleteCard(string arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == cooAddress
    stor12.length++
    stor12[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    if arg5 > 0:
        if arg2:
            stor12[stor12.length].field_256 = arg2
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = arg5
            stor12[stor12.length].field_1280 = 1
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = arg5
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = arg2
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = arg2
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = arg5
            stor13[stor12.length].field_1280 = 1
            stor8[stor12.length] = 1
        else:
            stor12[stor12.length].field_256 = ceoAddress
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = arg5
            stor12[stor12.length].field_1280 = 0
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = arg5
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = ceoAddress
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = ceoAddress
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = arg5
            stor13[stor12.length].field_1280 = 0
            stor8[stor12.length] = 0
    else:
        if arg2:
            stor12[stor12.length].field_256 = arg2
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = 10^15
            stor12[stor12.length].field_1280 = 1
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = 10^15
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = arg2
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = arg2
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = 10^15
            stor13[stor12.length].field_1280 = 1
            stor8[stor12.length] = 1
        else:
            stor12[stor12.length].field_256 = ceoAddress
            stor12[stor12.length].field_512 = arg3
            stor12[stor12.length].field_768 = arg4
            stor12[stor12.length].field_1024 = 10^15
            stor12[stor12.length].field_1280 = 0
            require stor12.length == uint32(stor12.length)
            emit Birth(stor12.length, this.address);
            priceOf[stor12.length] = 10^15
            stor4[stor12.length] = arg3
            stor5[stor12.length] = arg4
            stor6[stor12.length] = ceoAddress
            stor7[stor12.length][] = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length][].field_0 = Array(len=arg1.length, data=arg1[all])
            stor13[stor12.length].field_256 = ceoAddress
            stor13[stor12.length].field_512 = arg3
            stor13[stor12.length].field_768 = arg4
            stor13[stor12.length].field_1024 = 10^15
            stor13[stor12.length].field_1280 = 0
            stor8[stor12.length] = 0
    balanceOf[address(this.address)]++
    ownerOf[stor12.length] = this.address
    emit Transfer(0, address(this.address), stor12.length);
    return stor12.length
}

function purchase(uint256 arg1) payable {
    require ownerOf[arg1] != msg.sender
    require msg.sender
    require msg.value >= msg.value
    if not msg.value:
        if not msg.value:
            require 0 <= msg.value
            balanceOf[address(msg.sender)]++
            ownerOf[arg1] = msg.sender
            if ownerOf[arg1]:
                balanceOf[stor0[arg1]]--
                athleteIndexToApproved[arg1] = 0
            emit Transfer(ownerOf[arg1], msg.sender, arg1);
            if ownerOf[arg1] != this.address:
                call ownerOf[arg1] with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require arg1 < stor12.length
            mem[288] = stor12[arg1].field_0
            idx = 288
            s = 0
            while stor12[arg1].length + 288 > idx + 32:
                mem[idx + 32] = stor12[(6 * arg1) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit TokenSold(arg1, msg.value, ownerOf[arg1], msg.sender, Array(len=stor12[arg1].length, data=mem[288 len stor12[arg1].length + (floor32(stor12[arg1].length - 1) + -stor12[arg1].length + 32 % 32)]));
            call stor6[arg1] with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call ceoAddress with:
                 gas 2300 wei
        else:
            require msg.value
            require msg.value * stor5[arg1] / msg.value == stor5[arg1]
            require msg.value * stor5[arg1] / 100 >= 0
            require msg.value * stor5[arg1] / 100 <= msg.value
            balanceOf[address(msg.sender)]++
            ownerOf[arg1] = msg.sender
            if ownerOf[arg1]:
                balanceOf[stor0[arg1]]--
                athleteIndexToApproved[arg1] = 0
            emit Transfer(ownerOf[arg1], msg.sender, arg1);
            if ownerOf[arg1] != this.address:
                call ownerOf[arg1] with:
                   value msg.value - (msg.value * stor5[arg1] / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require arg1 < stor12.length
            mem[288] = stor12[arg1].field_0
            idx = 288
            s = 0
            while stor12[arg1].length + 288 > idx + 32:
                mem[idx + 32] = stor12[(6 * arg1) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit TokenSold(arg1, msg.value, ownerOf[arg1], msg.sender, Array(len=stor12[arg1].length, data=mem[288 len stor12[arg1].length + (floor32(stor12[arg1].length - 1) + -stor12[arg1].length + 32 % 32)]));
            call stor6[arg1] with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call ceoAddress with:
               value msg.value * stor5[arg1] / 100 wei
                 gas 2300 * is_zero(value) wei
    else:
        require msg.value
        require msg.value * stor4[arg1] / msg.value == stor4[arg1]
        if not msg.value:
            require msg.value * stor4[arg1] / 100 >= msg.value * stor4[arg1] / 100
            require msg.value * stor4[arg1] / 100 <= msg.value
            balanceOf[address(msg.sender)]++
            ownerOf[arg1] = msg.sender
            if ownerOf[arg1]:
                balanceOf[stor0[arg1]]--
                athleteIndexToApproved[arg1] = 0
            emit Transfer(ownerOf[arg1], msg.sender, arg1);
            if ownerOf[arg1] != this.address:
                call ownerOf[arg1] with:
                   value msg.value - (msg.value * stor4[arg1] / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require arg1 < stor12.length
            mem[288] = stor12[arg1].field_0
            idx = 288
            s = 0
            while stor12[arg1].length + 288 > idx + 32:
                mem[idx + 32] = stor12[(6 * arg1) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit TokenSold(arg1, msg.value, ownerOf[arg1], msg.sender, Array(len=stor12[arg1].length, data=mem[288 len stor12[arg1].length + (floor32(stor12[arg1].length - 1) + -stor12[arg1].length + 32 % 32)]));
            call stor6[arg1] with:
               value msg.value * stor4[arg1] / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call ceoAddress with:
                 gas 2300 wei
        else:
            require msg.value
            require msg.value * stor5[arg1] / msg.value == stor5[arg1]
            require (msg.value * stor4[arg1] / 100) + (msg.value * stor5[arg1] / 100) >= msg.value * stor4[arg1] / 100
            require (msg.value * stor4[arg1] / 100) + (msg.value * stor5[arg1] / 100) <= msg.value
            balanceOf[address(msg.sender)]++
            ownerOf[arg1] = msg.sender
            if ownerOf[arg1]:
                balanceOf[stor0[arg1]]--
                athleteIndexToApproved[arg1] = 0
            emit Transfer(ownerOf[arg1], msg.sender, arg1);
            if ownerOf[arg1] != this.address:
                call ownerOf[arg1] with:
                   value msg.value - (msg.value * stor4[arg1] / 100) - (msg.value * stor5[arg1] / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require arg1 < stor12.length
            mem[288] = stor12[arg1].field_0
            idx = 288
            s = 0
            while stor12[arg1].length + 288 > idx + 32:
                mem[idx + 32] = stor12[(6 * arg1) + s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit TokenSold(arg1, msg.value, ownerOf[arg1], msg.sender, Array(len=stor12[arg1].length, data=mem[288 len stor12[arg1].length + (floor32(stor12[arg1].length - 1) + -stor12[arg1].length + 32 % 32)]));
            call stor6[arg1] with:
               value msg.value * stor4[arg1] / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call ceoAddress with:
               value msg.value * stor5[arg1] / 100 wei
                 gas 2300 * is_zero(value) wei
}



}
