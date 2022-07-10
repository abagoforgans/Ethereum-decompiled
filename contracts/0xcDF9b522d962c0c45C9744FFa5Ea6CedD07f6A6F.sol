contract main {




// =====================  Runtime code  =====================


#
#  - settleJackpot()
#
mapping of address tickets;
uint256 numberEnd;
uint256 firstNumber;
uint256 dailyAmount;
uint256 weeklyAmount;
uint256 monthlyAmount;
uint256 seasonalAmount;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint8 stor7; offset 24
address stor7; offset 32
uint256 stor7; offset 24
uint256 stor7; offset 16
uint256 stor7; offset 8
uint256 stor7;
address lotoAddress;
address newVersionAddress;
address stor10;
uint256 dailyNumberStartPrev;
uint256 weeklyNumberStartPrev;
uint256 monthlyNumberStartPrev;
uint256 seasonalNumberStartPrev;
uint256 dailyStart;
uint256 weeklyStart;
uint256 monthlyStart;
uint256 seasonalStart;
uint256 dailyEnd;
uint256 weeklyEnd;
uint256 monthlyEnd;
uint256 seasonalEnd;
uint256 dailyNumberStart;
uint256 weeklyNumberStart;
uint256 monthlyNumberStart;
uint256 seasonalNumberStart;
uint256 dailyNumberEndPrev;
uint256 weeklyNumberEndPrev;
uint256 monthlyNumberEndPrev;
uint256 seasonalNumberEndPrev;

function numberEnd() {
    return numberEnd
}

function monthlyNumberStartPrev() {
    return monthlyNumberStartPrev
}

function seasonalNumberStart() {
    return seasonalNumberStart
}

function firstNumber() {
    return firstNumber
}

function dailyNumberStartPrev() {
    return dailyNumberStartPrev
}

function dailyNumberEndPrev() {
    return dailyNumberEndPrev
}

function weeklyNumberStartPrev() {
    return weeklyNumberStartPrev
}

function seasonalStart() {
    return seasonalStart
}

function tickets(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tickets[arg1]
}

function dailyAmount() {
    return dailyAmount
}

function monthlyAmount() {
    return monthlyAmount
}

function seasonalNumberStartPrev() {
    return seasonalNumberStartPrev
}

function lotoAddress() {
    return lotoAddress
}

function seasonalProcessed() {
    return bool(uint8(stor7.field_24))
}

function weeklyEnd() {
    return weeklyEnd
}

function weeklyNumberEndPrev() {
    return weeklyNumberEndPrev
}

function weeklyProcessed() {
    return bool(uint8(stor7.field_8))
}

function dailyEnd() {
    return dailyEnd
}

function monthlyStart() {
    return monthlyStart
}

function monthlyNumberStart() {
    return monthlyNumberStart
}

function seasonalNumberEndPrev() {
    return seasonalNumberEndPrev
}

function monthlyProcessed() {
    return bool(uint8(stor7.field_16))
}

function seasonalEnd() {
    return seasonalEnd
}

function monthlyNumberEndPrev() {
    return monthlyNumberEndPrev
}

function dailyProcessed() {
    return bool(uint8(stor7.field_0))
}

function weeklyStart() {
    return weeklyStart
}

function monthlyEnd() {
    return monthlyEnd
}

function weeklyNumberStart() {
    return weeklyNumberStart
}

function weeklyAmount() {
    return weeklyAmount
}

function dailyStart() {
    return dailyStart
}

function newVersionAddress() {
    return newVersionAddress
}

function dailyNumberStart() {
    return dailyNumberStart
}

function seasonalAmount() {
    return seasonalAmount
}

function _fallback() payable {
  stop
}

function setLoto(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor7.field_32)
    lotoAddress = arg1
}

function setNewVersion(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor7.field_32)
    newVersionAddress = arg1
}

function migrate() {
    if address(stor7.field_32) != msg.sender:
        require msg.sender == newVersionAddress
    call newVersionAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > firstNumber:
        return tickets[arg1]
    require ext_code.size(stor10)
    call stor10.0xb93f9b0a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_430de4c6(?) {
    require calldata.size - 4 >= 32
    if lotoAddress != msg.sender:
        revert with 0, 'Loto only'
    emit 0x41b5ae92: seasonalAmount + monthlyAmount + weeklyAmount + dailyAmount, arg1
    call arg1 with:
       value seasonalAmount + monthlyAmount + weeklyAmount + dailyAmount wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payIn() payable {
    if dailyAmount + weeklyAmount + monthlyAmount + seasonalAmount < eth.balance(this.address):
        dailyAmount += eth.balance(this.address) - dailyAmount - weeklyAmount - monthlyAmount - seasonalAmount / 4
        weeklyAmount += eth.balance(this.address) - dailyAmount - weeklyAmount - monthlyAmount - seasonalAmount / 4
        monthlyAmount += eth.balance(this.address) - dailyAmount - weeklyAmount - monthlyAmount - seasonalAmount / 4
        seasonalAmount += eth.balance(this.address) - dailyAmount - weeklyAmount - monthlyAmount - seasonalAmount / 4
}

function sub_62eb78db(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 0
        tickets[cd[((32 * idx) + cd[36] + 36)]] = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
}

function sub_c4d2e0aa(?) {
    require calldata.size - 4 >= 64
    if lotoAddress != msg.sender:
        revert with 0, 'Loto only'
    if block.number < dailyEnd:
        if dailyNumberStart == dailyNumberStartPrev:
            dailyNumberStart = numberEnd + 1
        if block.number < weeklyEnd:
            if weeklyNumberStart == weeklyNumberStartPrev:
                weeklyNumberStart = numberEnd + 1
            if block.number < monthlyEnd:
                if monthlyNumberStart == monthlyNumberStartPrev:
                    monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
            else:
                Mask(240, 0, stor7.field_16) = Mask(240, 0, numberEnd == monthlyNumberEndPrev)
                monthlyStart = monthlyEnd
                monthlyEnd += 150000
                monthlyNumberStartPrev = monthlyNumberStart
                monthlyNumberEndPrev = numberEnd
                monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
        else:
            Mask(248, 0, stor7.field_8) = Mask(248, 0, numberEnd == weeklyNumberEndPrev)
            weeklyStart = weeklyEnd
            weeklyEnd += 35000
            weeklyNumberStartPrev = weeklyNumberStart
            weeklyNumberEndPrev = numberEnd
            weeklyNumberStart = numberEnd + 1
            if block.number < monthlyEnd:
                if monthlyNumberStart == monthlyNumberStartPrev:
                    monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
            else:
                Mask(240, 0, stor7.field_16) = Mask(240, 0, numberEnd == monthlyNumberEndPrev)
                monthlyStart = monthlyEnd
                monthlyEnd += 150000
                monthlyNumberStartPrev = monthlyNumberStart
                monthlyNumberEndPrev = numberEnd
                monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
    else:
        uint256(stor7.field_0) = numberEnd == dailyNumberEndPrev or Mask(248, 8, uint256(stor7.field_0))
        dailyStart = dailyEnd
        dailyEnd += 5000
        dailyNumberStartPrev = dailyNumberStart
        dailyNumberEndPrev = numberEnd
        dailyNumberStart = numberEnd + 1
        if block.number < weeklyEnd:
            if weeklyNumberStart == weeklyNumberStartPrev:
                weeklyNumberStart = numberEnd + 1
            if block.number < monthlyEnd:
                if monthlyNumberStart == monthlyNumberStartPrev:
                    monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
            else:
                Mask(240, 0, stor7.field_16) = Mask(240, 0, numberEnd == monthlyNumberEndPrev)
                monthlyStart = monthlyEnd
                monthlyEnd += 150000
                monthlyNumberStartPrev = monthlyNumberStart
                monthlyNumberEndPrev = numberEnd
                monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
        else:
            Mask(248, 0, stor7.field_8) = Mask(248, 0, numberEnd == weeklyNumberEndPrev)
            weeklyStart = weeklyEnd
            weeklyEnd += 35000
            weeklyNumberStartPrev = weeklyNumberStart
            weeklyNumberEndPrev = numberEnd
            weeklyNumberStart = numberEnd + 1
            if block.number < monthlyEnd:
                if monthlyNumberStart == monthlyNumberStartPrev:
                    monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
            else:
                Mask(240, 0, stor7.field_16) = Mask(240, 0, numberEnd == monthlyNumberEndPrev)
                monthlyStart = monthlyEnd
                monthlyEnd += 150000
                monthlyNumberStartPrev = monthlyNumberStart
                monthlyNumberEndPrev = numberEnd
                monthlyNumberStart = numberEnd + 1
                if block.number < seasonalEnd:
                    if seasonalNumberStart == seasonalNumberStartPrev:
                        seasonalNumberStart = numberEnd + 1
                else:
                    Mask(232, 0, stor7.field_24) = Mask(232, 0, numberEnd == seasonalNumberEndPrev)
                    seasonalStart = seasonalEnd
                    seasonalEnd += 125 * 3600
                    seasonalNumberStartPrev = seasonalNumberStart
                    seasonalNumberEndPrev = numberEnd
                    seasonalNumberStart = numberEnd + 1
    numberEnd++
    tickets[stor1 + 1] = arg2
    emit Ticket((numberEnd + 1), Mask(128, 128, arg1));
}

function setOldVersion(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor7.field_32)
    stor10 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xcde36cc1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dailyStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x8401cec5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dailyEnd = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xb91d3f95 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor7.field_0) = uint8(bool(ext_call.return_data[0]))
    require ext_code.size(stor10)
    staticcall stor10.0xb99e6571 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weeklyStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x764c8bf6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weeklyEnd = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x83fbe833 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(248, 0, stor7.field_8) = Mask(248, 0, bool(ext_call.return_data[0]))
    require ext_code.size(stor10)
    staticcall stor10.0x9430c480 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    monthlyStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xbe94a4dc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    monthlyEnd = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x9b1a09bc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(240, 0, stor7.field_16) = Mask(240, 0, bool(ext_call.return_data[0]))
    require ext_code.size(stor10)
    staticcall stor10.0x4d8c999b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seasonalStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xa033a19c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seasonalEnd = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x755871b7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    Mask(232, 0, stor7.field_24) = Mask(232, 0, bool(ext_call.return_data[0]))
    require ext_code.size(stor10)
    staticcall stor10.0x35b3e33f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dailyNumberStartPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x3dda3b3a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weeklyNumberStartPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x162d61cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    monthlyNumberStartPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x6790baad with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seasonalNumberStartPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xe96dbb68 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dailyNumberStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xc056fee3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weeklyNumberStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x97b5a262 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    monthlyNumberStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x1d2653b7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seasonalNumberStart = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x3ae6e66a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dailyNumberEndPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x78c9773b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weeklyNumberEndPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xa6df6ad4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    monthlyNumberEndPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x99502012 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seasonalNumberEndPrev = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.numberEnd() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    numberEnd = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x59c1334b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dailyAmount = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xca16dfec with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    weeklyAmount = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0x6588439c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    monthlyAmount = ext_call.return_data[0]
    require ext_code.size(stor10)
    staticcall stor10.0xfb518208 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    seasonalAmount = ext_call.return_data[0]
    firstNumber = numberEnd
    require ext_code.size(stor10)
    call stor10.0x8fd3ab80 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
