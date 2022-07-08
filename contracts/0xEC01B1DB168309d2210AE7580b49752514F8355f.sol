contract main {




// =====================  Runtime code  =====================


array of struct cardOwnerOf;
mapping of uint256 stor1;
address stor2;
mapping of uint8 stor3;

function cardOwnerOf(uint256 arg1) {
    require arg1 < cardOwnerOf.length
    return cardOwnerOf[arg1].field_512
}

function admin() {
    require stor2 == msg.sender
    selfdestruct(0x8948e4b00deb0a5adb909f4dc5789d20d0851d71)
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    require stor2 == msg.sender
    stor3[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require stor2 == msg.sender
    stor3[address(arg1)] = 0
}

function withdrawAmount(uint256 arg1) {
    require stor3[address(msg.sender)]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() {
    require stor3[address(msg.sender)]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function CancelSell(uint256 arg1) {
    require arg1 < cardOwnerOf.length
    require cardOwnerOf[arg1].field_512
    require cardOwnerOf[arg1].field_512 == msg.sender
    require arg1 < cardOwnerOf.length
    cardOwnerOf[arg1].field_672 = 0
    emit CancelCardSell(arg1, cardOwnerOf[arg1].field_512);
}

function createCard(uint256 arg1, uint256 arg2) {
    require stor3[address(msg.sender)]
    require arg2 > 0
    cardOwnerOf.length++
    cardOwnerOf[cardOwnerOf.length].field_0 = arg1
    cardOwnerOf[cardOwnerOf.length].field_256 = arg2
    cardOwnerOf[cardOwnerOf.length].field_512 = msg.sender
    cardOwnerOf[cardOwnerOf.length].field_672 = 1
}

function sell(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg1 < cardOwnerOf.length
    require cardOwnerOf[arg1].field_512
    require cardOwnerOf[arg1].field_512 == msg.sender
    require arg1 < cardOwnerOf.length
    cardOwnerOf[arg1].field_256 = arg2
    cardOwnerOf[arg1].field_672 = 1
    emit userSell(arg1, arg2, cardOwnerOf[arg1].field_512);
}

function getCard(uint256 arg1) {
    require arg1 < cardOwnerOf.length
    require msg.sender
    require arg1 < cardOwnerOf.length
    if cardOwnerOf[arg1].field_512 != msg.sender:
        return cardOwnerOf[arg1].field_0, 
               cardOwnerOf[arg1].field_256,
               cardOwnerOf[arg1].field_512,
               bool(cardOwnerOf[arg1].field_672),
               0
    return cardOwnerOf[arg1].field_0, 
           cardOwnerOf[arg1].field_256,
           cardOwnerOf[arg1].field_512,
           bool(cardOwnerOf[arg1].field_672),
           1
}

function initCards(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require stor3[address(msg.sender)]
    idx = 0
    while idx < 10:
        _10 = mem[64]
        mem[64] = mem[64] + 128
        mem[_10] = 0
        mem[_10 + 32] = 0
        mem[_10 + 64] = 0
        mem[_10 + 96] = 0
        mem[0] = msg.sender
        mem[32] = 3
        require stor3[address(msg.sender)]
        _12 = mem[64]
        mem[64] = mem[64] + 128
        mem[_12] = arg1
        mem[_12 + 32] = 208 * 10^14
        mem[_12 + 64] = msg.sender
        mem[_12 + 96] = 1
        cardOwnerOf.length++
        mem[0] = 0
        cardOwnerOf[cardOwnerOf.length].field_0 = arg1
        cardOwnerOf[cardOwnerOf.length].field_256 = 208 * 10^14
        cardOwnerOf[cardOwnerOf.length].field_512 = msg.sender
        cardOwnerOf[cardOwnerOf.length].field_672 = 1
        idx = idx + 1
        continue 
}

function getMyCards(address arg1) {
    require arg1
    if not stor1[address(arg1)]:
        if arg1 != stor2:
            if stor1[address(arg1)] > 0:
                idx = 0
                s = 0
                while idx < cardOwnerOf.length:
                    mem[0] = 0
                    if cardOwnerOf[idx].field_512 != arg1:
                        idx = idx + 1
                        s = s
                        continue 
                    require s < stor1[address(arg1)]
                    mem[(32 * s) + 128] = idx
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = mem[128 len floor32(stor1[address(arg1)])]
                return Array(len=stor1[address(arg1)], data=mem[128 len floor32(stor1[address(arg1)])], mem[(32 * stor1[address(arg1)]) + floor32(stor1[address(arg1)]) + 192 len (32 * stor1[address(arg1)]) - floor32(stor1[address(arg1)])]), 
        mem[(32 * stor1[address(arg1)]) + 128] = 32
        mem[(32 * stor1[address(arg1)]) + 160] = stor1[address(arg1)]
        mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = mem[128 len floor32(stor1[address(arg1)])]
    else:
        mem[128 len 32 * stor1[address(arg1)]] = code.data[5569 len 32 * stor1[address(arg1)]]
        if arg1 != stor2:
            if stor1[address(arg1)] > 0:
                idx = 0
                s = 0
                while idx < cardOwnerOf.length:
                    mem[0] = 0
                    if cardOwnerOf[idx].field_512 != arg1:
                        idx = idx + 1
                        s = s
                        continue 
                    require s < stor1[address(arg1)]
                    mem[(32 * s) + 128] = idx
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = mem[128 len floor32(stor1[address(arg1)])]
                return Array(len=stor1[address(arg1)], data=mem[128 len floor32(stor1[address(arg1)])], mem[(32 * stor1[address(arg1)]) + floor32(stor1[address(arg1)]) + 192 len (32 * stor1[address(arg1)]) - floor32(stor1[address(arg1)])]), 
        mem[(32 * stor1[address(arg1)]) + 128] = 32
        mem[(32 * stor1[address(arg1)]) + 160] = stor1[address(arg1)]
        mem[(32 * stor1[address(arg1)]) + 192 len floor32(stor1[address(arg1)])] = code.data[5569 len floor32(stor1[address(arg1)])]
    return memory
      from (32 * stor1[address(arg1)]) + 128
       len (96 * stor1[address(arg1)]) + 64
}

function purchase(uint256 arg1) payable {
    require arg1 < cardOwnerOf.length
    require stor2 != msg.sender
    require cardOwnerOf[arg1].field_512 != msg.sender
    require msg.sender
    require arg1 < cardOwnerOf.length
    require bool(cardOwnerOf[arg1].field_672) == 1
    require msg.value >= cardOwnerOf[arg1].field_256
    if cardOwnerOf[arg1].field_256 < 5 * 10^17:
        if not cardOwnerOf[arg1].field_256:
            require cardOwnerOf[arg1].field_256 <= msg.value
            stor1[address(msg.sender)]++
            require arg1 < cardOwnerOf.length
            cardOwnerOf[arg1].field_512 = msg.sender
            cardOwnerOf[arg1].field_672 = 0
            if cardOwnerOf[arg1].field_512:
                stor1[stor0[arg1].field_512]--
            emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
            if cardOwnerOf[arg1].field_512 == this.address:
                call msg.sender with:
                   value msg.value - cardOwnerOf[arg1].field_256 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call cardOwnerOf[arg1].field_512 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - cardOwnerOf[arg1].field_256 wei
                     gas 2300 * is_zero(value) wei
        else:
            require cardOwnerOf[arg1].field_256
            require 94 * cardOwnerOf[arg1].field_256 / cardOwnerOf[arg1].field_256 == 94
            require cardOwnerOf[arg1].field_256 <= msg.value
            stor1[address(msg.sender)]++
            require arg1 < cardOwnerOf.length
            cardOwnerOf[arg1].field_512 = msg.sender
            cardOwnerOf[arg1].field_672 = 0
            if cardOwnerOf[arg1].field_512:
                stor1[stor0[arg1].field_512]--
            emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
            if cardOwnerOf[arg1].field_512 == this.address:
                call msg.sender with:
                   value msg.value - cardOwnerOf[arg1].field_256 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                call cardOwnerOf[arg1].field_512 with:
                   value 94 * cardOwnerOf[arg1].field_256 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value msg.value - cardOwnerOf[arg1].field_256 wei
                     gas 2300 * is_zero(value) wei
    else:
        if cardOwnerOf[arg1].field_256 < 2 * 10^18:
            if not cardOwnerOf[arg1].field_256:
                require cardOwnerOf[arg1].field_256 <= msg.value
                stor1[address(msg.sender)]++
                require arg1 < cardOwnerOf.length
                cardOwnerOf[arg1].field_512 = msg.sender
                cardOwnerOf[arg1].field_672 = 0
                if cardOwnerOf[arg1].field_512:
                    stor1[stor0[arg1].field_512]--
                emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
                if cardOwnerOf[arg1].field_512 == this.address:
                    call msg.sender with:
                       value msg.value - cardOwnerOf[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call cardOwnerOf[arg1].field_512 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value msg.value - cardOwnerOf[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
            else:
                require cardOwnerOf[arg1].field_256
                require 95 * cardOwnerOf[arg1].field_256 / cardOwnerOf[arg1].field_256 == 95
                require cardOwnerOf[arg1].field_256 <= msg.value
                stor1[address(msg.sender)]++
                require arg1 < cardOwnerOf.length
                cardOwnerOf[arg1].field_512 = msg.sender
                cardOwnerOf[arg1].field_672 = 0
                if cardOwnerOf[arg1].field_512:
                    stor1[stor0[arg1].field_512]--
                emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
                if cardOwnerOf[arg1].field_512 == this.address:
                    call msg.sender with:
                       value msg.value - cardOwnerOf[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call cardOwnerOf[arg1].field_512 with:
                       value 95 * cardOwnerOf[arg1].field_256 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value msg.value - cardOwnerOf[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
        else:
            if cardOwnerOf[arg1].field_256 >= 5 * 10^18:
                if not cardOwnerOf[arg1].field_256:
                    require cardOwnerOf[arg1].field_256 <= msg.value
                    stor1[address(msg.sender)]++
                    require arg1 < cardOwnerOf.length
                    cardOwnerOf[arg1].field_512 = msg.sender
                    cardOwnerOf[arg1].field_672 = 0
                    if cardOwnerOf[arg1].field_512:
                        stor1[stor0[arg1].field_512]--
                    emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
                    if cardOwnerOf[arg1].field_512 == this.address:
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call cardOwnerOf[arg1].field_512 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require cardOwnerOf[arg1].field_256
                    require 97 * cardOwnerOf[arg1].field_256 / cardOwnerOf[arg1].field_256 == 97
                    require cardOwnerOf[arg1].field_256 <= msg.value
                    stor1[address(msg.sender)]++
                    require arg1 < cardOwnerOf.length
                    cardOwnerOf[arg1].field_512 = msg.sender
                    cardOwnerOf[arg1].field_672 = 0
                    if cardOwnerOf[arg1].field_512:
                        stor1[stor0[arg1].field_512]--
                    emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
                    if cardOwnerOf[arg1].field_512 == this.address:
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call cardOwnerOf[arg1].field_512 with:
                           value 97 * cardOwnerOf[arg1].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
            else:
                if not cardOwnerOf[arg1].field_256:
                    require cardOwnerOf[arg1].field_256 <= msg.value
                    stor1[address(msg.sender)]++
                    require arg1 < cardOwnerOf.length
                    cardOwnerOf[arg1].field_512 = msg.sender
                    cardOwnerOf[arg1].field_672 = 0
                    if cardOwnerOf[arg1].field_512:
                        stor1[stor0[arg1].field_512]--
                    emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
                    if cardOwnerOf[arg1].field_512 == this.address:
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call cardOwnerOf[arg1].field_512 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                else:
                    require cardOwnerOf[arg1].field_256
                    require 96 * cardOwnerOf[arg1].field_256 / cardOwnerOf[arg1].field_256 == 96
                    require cardOwnerOf[arg1].field_256 <= msg.value
                    stor1[address(msg.sender)]++
                    require arg1 < cardOwnerOf.length
                    cardOwnerOf[arg1].field_512 = msg.sender
                    cardOwnerOf[arg1].field_672 = 0
                    if cardOwnerOf[arg1].field_512:
                        stor1[stor0[arg1].field_512]--
                    emit Transfer(cardOwnerOf[arg1].field_512, msg.sender, arg1);
                    if cardOwnerOf[arg1].field_512 == this.address:
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call cardOwnerOf[arg1].field_512 with:
                           value 96 * cardOwnerOf[arg1].field_256 / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value msg.value - cardOwnerOf[arg1].field_256 wei
                             gas 2300 * is_zero(value) wei
    emit CardSold(arg1, cardOwnerOf[arg1].field_256, cardOwnerOf[arg1].field_512, msg.sender);
}



}
