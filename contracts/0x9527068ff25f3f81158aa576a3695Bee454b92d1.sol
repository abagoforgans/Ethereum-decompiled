contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
uint8 stor2; offset 160
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0
    stor2 = 0
    stor5 = code.data[2728 len 32]
    stor6 = code.data[2760 len 32]
    stor4 = 10^15 * code.data[2792 len 32]
    stor7 = code.data[2728 len 32]
    return code.data[213 len 2515]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
uint8 stor2; offset 160
address stor2;
uint256 sub_95afe398;
uint256 sub_fa66a5f4;
uint256 timeStart;
uint256 timeEnd;
uint256 sub_727c82fe;
uint8 lockStatus;

function lockStatus() {
    return lockStatus
}

function sub_727c82fe(?) {
    return sub_727c82fe
}

function sub_95afe398(?) {
    return sub_95afe398
}

function sub_fa66a5f4(?) {
    return sub_fa66a5f4
}

function timeStart() {
    return timeStart
}

function timeEnd() {
    return timeEnd
}

function kill() {
    require stor0 == msg.sender
    if sub_95afe398 > 0:
        if eth.balance(this.address) >= sub_95afe398:
            call address(stor2.field_0) with:
               value sub_95afe398 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            sub_95afe398 = 0
    selfdestruct(stor0)
}

function sub_2e88ab0b(?) {
    require uint8(stor2.field_160) <= 2
    return address(stor2.field_0), uint8(stor2.field_160)
}

function sub_7126b147(?) {
    require uint8(stor1.field_160) <= 2
    return address(stor1.field_0), uint8(stor1.field_160)
}

function _fallback() payable {
    if address(stor2.field_0) == msg.sender:
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_745db327(?) {
    require stor0 != msg.sender
    require address(stor1.field_0) != msg.sender
    address(stor2.field_0) = msg.sender
    address(stor2.field_0) = msg.sender
    uint8(stor2.field_160) = 1
}

function sub_e12190fb(?) {
    require stor0 != msg.sender
    require address(stor2.field_0) != msg.sender
    address(stor1.field_0) = msg.sender
    address(stor1.field_0) = msg.sender
    uint8(stor1.field_160) = 1
}

function pay() payable {
    if address(stor2.field_0) == msg.sender:
        sub_95afe398 += msg.value
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setDailyPrice(uint256 arg1) {
    require uint8(stor1.field_160) <= 2
    if uint8(stor1.field_160) != 1:
        require uint8(stor2.field_160) <= 2
        if uint8(stor2.field_160) != 1:
            sub_fa66a5f4 = 10^15 * arg1
}

function setDates(uint256 arg1, uint256 arg2) {
    require uint8(stor1.field_160) <= 2
    if uint8(stor1.field_160) != 1:
        require uint8(stor2.field_160) <= 2
        if uint8(stor2.field_160) != 1:
            timeStart = arg1
            timeEnd = arg2
}

function sub_2ca0a794(?) {
    require address(stor1.field_0) != msg.sender
    uint8(stor2.field_160) = 2
    require uint8(stor1.field_160) <= 2
    if uint8(stor1.field_160) == 2:
        lockStatus = 0
        if sub_95afe398 > 0:
            if eth.balance(this.address) >= sub_95afe398:
                call address(stor2.field_0) with:
                   value sub_95afe398 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_95afe398 = 0
}

function sub_be4e6039(?) {
    require address(stor2.field_0) != msg.sender
    uint8(stor1.field_160) = 2
    require uint8(stor2.field_160) <= 2
    if uint8(stor2.field_160) == 2:
        lockStatus = 0
        if sub_95afe398 > 0:
            if eth.balance(this.address) >= sub_95afe398:
                call address(stor2.field_0) with:
                   value sub_95afe398 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                sub_95afe398 = 0
}

function checkPayment(uint256 arg1) {
    require stor0 == msg.sender
    require uint8(stor1.field_160) <= 2
    if uint8(stor1.field_160) != 1:
        lockStatus = 0
    else:
        require uint8(stor2.field_160) <= 2
        if uint8(stor2.field_160) != 1:
            lockStatus = 0
        else:
            if arg1 > timeEnd:
                lockStatus = 0
                uint8(stor2.field_160) = 2
                uint8(stor1.field_160) = 2
                if sub_95afe398 > 0:
                    if eth.balance(this.address) > 0:
                        call address(stor2.field_0) with:
                           value sub_95afe398 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                sub_95afe398 = 0
            else:
                if timeEnd > sub_727c82fe + (720 * 24 * 3600):
                    if arg1 > sub_727c82fe:
                        if sub_95afe398 < 30 * sub_fa66a5f4:
                            lockStatus = 0
                        else:
                            if eth.balance(this.address) < 30 * sub_fa66a5f4:
                                lockStatus = 0
                            else:
                                call address(stor1.field_0) with:
                                   value 30 * sub_fa66a5f4 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                sub_95afe398 += -30 * sub_fa66a5f4
                                sub_727c82fe += 720 * 24 * 3600
                                lockStatus = 1
                else:
                    if arg1 > sub_727c82fe:
                        if sub_95afe398 < timeEnd + -sub_727c82fe + 86399 / 24 * 3600 * sub_fa66a5f4:
                            lockStatus = 0
                        else:
                            if eth.balance(this.address) < timeEnd + -sub_727c82fe + 86399 / 24 * 3600 * sub_fa66a5f4:
                                lockStatus = 0
                            else:
                                call address(stor1.field_0) with:
                                   value timeEnd + -sub_727c82fe + 86399 / 24 * 3600 * sub_fa66a5f4 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                sub_95afe398 += -1 * timeEnd + -sub_727c82fe + 86399 / 24 * 3600 * sub_fa66a5f4
                                sub_727c82fe = timeEnd
                                lockStatus = 1
}



}
