contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
mapping of struct stor6;

function _fallback() payable {
    stor1 = 0x498f2b8129b153a3499e3812485c40178b6a5c48
    require not msg.value
    stor0 = msg.sender
    stor2 = 10
    stor6[stor0].field_0 = msg.sender
    stor6[stor0].field_256 = 0
    stor6[stor0].field_512 = 0
    stor6[stor0].field_768 = 1
    stor6[stor0].field_1024 = 0
    stor4++
    return code.data[805 len 6630]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
mapping of struct lockedBalance;

function getLockedBalance() {
    require lockedBalance[address(msg.sender)].field_0 == msg.sender
    return lockedBalance[address(msg.sender)].field_256
}

function getInvestorCredit() {
    require lockedBalance[address(msg.sender)].field_0 == msg.sender
    return lockedBalance[address(msg.sender)].field_1024
}

function getCurrBalance() {
    require lockedBalance[address(msg.sender)].field_0 == msg.sender
    return lockedBalance[address(msg.sender)].field_512
}

function closeContract() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function updateContract() {
    require msg.sender == stor0
}

function approveAsInvestor(address arg1, int256 arg2) {
    require msg.sender == stor0
    lockedBalance[address(arg1)].field_0 = arg1
    lockedBalance[address(arg1)].field_768 = 1
    lockedBalance[address(arg1)].field_1024 = arg2
}

function approveUser(address arg1) {
    require msg.sender == stor0
    lockedBalance[address(arg1)].field_0 = arg1
    lockedBalance[address(arg1)].field_256 = 0
    lockedBalance[address(arg1)].field_512 = 0
    lockedBalance[address(arg1)].field_768 = 0
    stor4++
}

function depositFunds() payable {
    if msg.sender == lockedBalance[address(msg.sender)].field_0:
        lockedBalance[address(msg.sender)].field_512 += msg.value
        emit UserStatus(Array(len=29, data='User has deposited some funds'), address(msg.sender), msg.value);
    else:
        lockedBalance[stor0].field_512 += msg.value
        emit UserStatus(Array(len=56, data='User is not approved thus donati', 'ng ether to the contract'), address(msg.sender), msg.value);
}

function withdrawFunds(uint256 arg1) {
    require msg.sender == lockedBalance[address(msg.sender)].field_0
    require lockedBalance[address(msg.sender)].field_512 >= arg1
    lockedBalance[address(msg.sender)].field_512 -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        lockedBalance[address(msg.sender)].field_512 += arg1
    else:
        emit UserStatus(Array(len=24, data='User has withdrawn funds'), address(msg.sender), arg1);
}

function allocateBalance(uint256 arg1, address arg2) {
    require msg.sender == stor1
    if lockedBalance[address(arg2)].field_512 >= arg1:
        lockedBalance[address(arg2)].field_512 -= arg1
        lockedBalance[address(arg2)].field_256 += arg1
        call stor1 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit UserStatus(Array(len=26, data='Bot has allocated balances'), address(arg2), msg.value);
        else:
            lockedBalance[address(arg2)].field_512 += arg1
            lockedBalance[address(arg2)].field_256 -= arg1
}

function deallocateBalance(address arg1) payable {
    require msg.sender == stor1
    if msg.value <= lockedBalance[address(arg1)].field_256:
        lockedBalance[address(arg1)].field_256 = 0
        lockedBalance[address(arg1)].field_512 += msg.value
    else:
        if bool(lockedBalance[address(arg1)].field_768) != 1:
            lockedBalance[address(arg1)].field_512 = lockedBalance[address(arg1)].field_512 + msg.value - ((msg.value * stor2) - (lockedBalance[address(arg1)].field_256 * stor2) / 100)
            lockedBalance[address(arg1)].field_256 = 0
            lockedBalance[stor0].field_512 += (msg.value * stor2) - (lockedBalance[address(arg1)].field_256 * stor2) / 100
        else:
            if lockedBalance[address(arg1)].field_1024 <= 0:
                lockedBalance[address(arg1)].field_512 = lockedBalance[address(arg1)].field_512 + msg.value - ((msg.value * stor2) - (lockedBalance[address(arg1)].field_256 * stor2) / 100)
                lockedBalance[address(arg1)].field_256 = 0
                lockedBalance[stor0].field_512 += (msg.value * stor2) - (lockedBalance[address(arg1)].field_256 * stor2) / 100
            else:
                lockedBalance[address(arg1)].field_1024 -= (msg.value * stor2) - (lockedBalance[address(arg1)].field_256 * stor2) / 100
                if lockedBalance[address(arg1)].field_1024 >= 0:
                    lockedBalance[address(arg1)].field_512 += msg.value
                    lockedBalance[address(arg1)].field_256 = 0
                else:
                    lockedBalance[address(arg1)].field_512 = lockedBalance[address(arg1)].field_512 + msg.value - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * lockedBalance[address(arg1)].field_1024)
                    lockedBalance[address(arg1)].field_256 = 0
                    lockedBalance[stor0].field_512 -= lockedBalance[address(arg1)].field_1024
}



}
