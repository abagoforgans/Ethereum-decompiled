contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[51 len 5719]
}



// =====================  Runtime code  =====================


uint8 contractState; offset 160
address owner;
address stor1;
uint8 stor2;
uint8 stor2; offset 160
address sub_cf2fec4cAddress;
uint256 stor2;
address stor3;
mapping of uint256 affiliateBalance;
mapping of struct prices;
mapping of uint8 stor6;

function getPrices(address arg1) {
    return prices[address(arg1)].field_0, prices[address(arg1)].field_256
}

function contractState() {
    require contractState <= 1
    return contractState
}

function owner() {
    return owner
}

function sub_cf2fec4c(?) {
    return sub_cf2fec4cAddress
}

function getAffiliateBalance(address arg1) {
    return affiliateBalance[address(arg1)]
}

function kill() {
    if owner != msg.sender:
    contractState = 0
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    revert 
}

function allowance(address arg1, address arg2) {
    revert 
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 1)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert 
}

function sub_fbbc1171(?) {
    if owner == msg.sender:
        contractState = 0
}

function activateContract() {
    if owner == msg.sender:
        contractState = 1
}

function freezeAccount(address arg1) {
    if owner == msg.sender:
        stor6[address(arg1)] = 1
}

function unFreezeAccount(address arg1) {
    if owner == msg.sender:
        stor6[address(arg1)] = 0
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
        emit OwnerChanged(owner, arg1);
}

function resetUser(address arg1) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            stor3 = arg1
}

function sub_549b1f6b(?) {
    require ext_code.size(stor1)
    call stor1.0x6880024a with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
}

function totalSupply() {
    require ext_code.size(stor1)
    call stor1.getTotalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getFeePercent() {
    require ext_code.size(stor1)
    call stor1.0xbe74264d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[30 len 2]
}

function sub_778c2f8a(?) {
    if owner == msg.sender:
        if arg1 >= 0:
            if arg1 < 100:
                uint8(stor2.field_160) = arg1
                emit 0x9113f765: uint8(stor2.field_0), arg1
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawAllEther() {
    require contractState <= 1
    if contractState != 1:
        return 0
    if sub_cf2fec4cAddress != msg.sender:
        return 0
    call sub_cf2fec4cAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function sub_e1a2a266(?) {
    require contractState <= 1
    if contractState == 1:
        if not stor6[address(msg.sender)]:
            if not arg1:
                prices[address(msg.sender)].field_256 = arg2
            else:
                prices[address(msg.sender)].field_0 = arg2
            emit 0x50a14e7f: arg1, arg2, msg.sender
}

function sub_0035f141(?) {
    if owner == msg.sender:
        require contractState <= 1
        if not contractState:
            stor1 = arg1
            require ext_code.size(arg1)
            call arg1.0x3e4ac25a with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            uint256(stor2.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2.field_0))
}

function getAffiliateInfo(address arg1) {
    require ext_code.size(stor3)
    call stor3.0xbc019eed with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x1a9fcb9c with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function withdrawEther() {
    require contractState <= 1
    if contractState != 1:
        return 0
    if stor6[address(msg.sender)]:
        return 0
    affiliateBalance[address(msg.sender)] = 0
    call msg.sender with:
       value affiliateBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit EtherWithdrawn(affiliateBalance[address(msg.sender)], msg.sender);
    return 1
}

function setFeePercent(uint16 arg1) {
    if owner == msg.sender:
        require ext_code.size(stor1)
        call stor1.0xbe74264d with:
             gas gas_remaining - 50 wei
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.setFeePercent(uint16 rg1) with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        emit 0x4958416b: ext_call.return_data[0] << 240, arg1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0x977c9e33 with:
         gas gas_remaining - 50 wei
        args 0, uint32(msg.sender), address(arg1), arg2, 0
    require ext_call.success
    if ext_call.return_data[0] > 0:
        emit Transfer(ext_call.return_data[0], msg.sender, arg1);
        emit Transfer((arg2 - ext_call.return_data[0]), msg.sender, sub_cf2fec4cAddress);
        return 0
    else:
        return 0
}

function sub_07352005(?) payable {
    require contractState <= 1
    if contractState == 1:
        if not stor6[address(arg2)]:
            if not stor6[address(msg.sender)]:
                if ext_code.size(msg.sender) > 1:
                    affiliateBalance[address(msg.sender)] += msg.value
                else:
                    if arg2 == msg.sender:
                        affiliateBalance[address(msg.sender)] += msg.value
                    else:
                        if prices[address(arg2)].field_0 * arg1 <= 0:
                            affiliateBalance[address(msg.sender)] += msg.value
                        else:
                            if prices[address(arg2)].field_0 * arg1 > msg.value:
                                emit InsufficientFunds(msg.value, prices[address(arg2)].field_0 * arg1, msg.sender);
                                affiliateBalance[address(msg.sender)] += msg.value
                            else:
                                require ext_code.size(stor3)
                                call stor3.0xbc019eed with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                require ext_code.size(stor3)
                                call stor3.0x1a9fcb9c with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if not address(ext_call.return_data[0]):
                                    if not address(ext_call.return_data[0]):
                                        affiliateBalance[address(arg2)] += msg.value
                                        if sub_cf2fec4cAddress == arg2:
                                            emit 0xeb35aa73: msg.value, msg.sender
                                    else:
                                        affiliateBalance[address(arg2)] = msg.value - (msg.value * uint8(stor2.field_160) / 100) + affiliateBalance[address(arg2)]
                                        if sub_cf2fec4cAddress == arg2:
                                            emit 0xeb35aa73: (msg.value - (msg.value * uint8(stor2.field_160) / 100)), msg.sender
                                        if msg.value * uint8(stor2.field_160) / 100 > 0:
                                            affiliateBalance[address(ext_call.return_data[0])] += msg.value * uint8(stor2.field_160) / 100
                                            emit 0x1fd11cde: ext_call.return_data[0] << 192, msg.value * uint8(stor2.field_160) / 100, msg.sender
                                else:
                                    if not address(ext_call.return_data[0]):
                                        affiliateBalance[address(arg2)] = msg.value - (msg.value * uint8(stor2.field_160) / 100) + affiliateBalance[address(arg2)]
                                        if sub_cf2fec4cAddress == arg2:
                                            emit 0xeb35aa73: (msg.value - (msg.value * uint8(stor2.field_160) / 100)), msg.sender
                                    else:
                                        affiliateBalance[address(arg2)] = msg.value - (2 * msg.value * uint8(stor2.field_160) / 100) + affiliateBalance[address(arg2)]
                                        if sub_cf2fec4cAddress == arg2:
                                            emit 0xeb35aa73: (msg.value - (2 * msg.value * uint8(stor2.field_160) / 100)), msg.sender
                                        if msg.value * uint8(stor2.field_160) / 100 > 0:
                                            affiliateBalance[address(ext_call.return_data[0])] += msg.value * uint8(stor2.field_160) / 100
                                            emit 0x1fd11cde: ext_call.return_data[0] << 192, msg.value * uint8(stor2.field_160) / 100, msg.sender
                                    if msg.value * uint8(stor2.field_160) / 100 > 0:
                                        affiliateBalance[address(ext_call.return_data[0])] += msg.value * uint8(stor2.field_160) / 100
                                        emit 0x1fd11cde: ext_call.return_data[0] << 192, msg.value * uint8(stor2.field_160) / 100, msg.sender
                                require ext_code.size(stor1)
                                call stor1.0x977c9e33 with:
                                     gas gas_remaining - 50 wei
                                    args address(arg2), msg.sender, arg1, 0
                                require ext_call.success
                                if ext_call.return_data[0] > 0:
                                    emit Transfer(ext_call.return_data[0], arg2, msg.sender);
                                    emit Transfer((arg1 - ext_call.return_data[0]), arg2, sub_cf2fec4cAddress);
}



}
