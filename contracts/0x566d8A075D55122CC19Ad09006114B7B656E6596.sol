contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    mem[96 len -3014] = code.data[3291 len -3014]
    mem[64] = -2918
    stor6[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = mem[128] + block.timestamp
    stor3 = mem[160]
    stor1 = mem[192]
    stor8 = msg.sender or Mask(96, 160, stor8)
    stor2 = 0
    stor4 = 0
    stor5 = 0
    stor7 = mem[224]
    return code.data[277 len 3014]
}



// =====================  Runtime code  =====================


#
#  - purchase(string arg1)
#  - _fallback()
#
uint256 startTime;
uint256 paymentsCount;
uint256 sub_de83aff5;
uint256 paymentInterval;
uint256 sub_d952d154;
uint256 sub_ccc1b0cd;
array of uint256 contractDetails;
uint256 minimumPayment;
address sub_f21376afAddress;
array of address stor9;
array of uint256 stor10;

function paymentInterval() {
    return paymentInterval
}

function contractDetails() {
    return contractDetails[0 len contractDetails.length]
}

function startTime() {
    return startTime
}

function minimumPayment() {
    return minimumPayment
}

function paymentsCount() {
    return paymentsCount
}

function sub_ccc1b0cd(?) {
    return sub_ccc1b0cd
}

function sub_d952d154(?) {
    return sub_d952d154
}

function sub_de83aff5(?) {
    return sub_de83aff5
}

function sub_f21376af(?) {
    return sub_f21376afAddress
}

function update() {
    require paymentInterval
    require paymentInterval + (sub_de83aff5 * paymentInterval) + startTime <= block.timestamp + 15
    if sub_de83aff5 >= paymentsCount:
        require msg.sender == sub_f21376afAddress
        selfdestruct(sub_f21376afAddress)
    if block.timestamp - startTime / paymentInterval > sub_de83aff5:
        sub_de83aff5++
        sub_ccc1b0cd += sub_d952d154
        sub_d952d154 = 0
        if paymentsCount + -sub_de83aff5 - 1 > 0:
            s = 0
            t = 0
            t = 0
            idx = 0
            while idx < 100:
                if stor10[idx] <= 0:
                    s = s
                    t = stor10[idx]
                    t = (3 * idx) + 9
                    idx = idx + 1
                    continue 
                require paymentsCount + -sub_de83aff5 - 1
                sub_d952d154 += stor10[idx] / paymentsCount + -sub_de83aff5 - 1
                stor10[idx] -= stor10[idx] / paymentsCount + -sub_de83aff5 - 1
                s = stor10[idx] / paymentsCount + -sub_de83aff5 - 1
                t = stor10[idx]
                t = (3 * idx) + 9
                idx = idx + 1
                continue 
    emit UpdateTriggered(msg.sender, sub_d952d154, sub_de83aff5);
}

function getNextPaymentDate() {
    return (paymentInterval + (sub_de83aff5 * paymentInterval) + startTime)
}

function contracteesSize() {
    idx = 0
    s = 0
    while idx < 100:
        if not stor9[idx]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = idx + 1
        continue 
    return s
}

function contractorWithdraw() {
    sub_ccc1b0cd = 0
    call sub_f21376afAddress with:
       value sub_ccc1b0cd wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ContractorWithdraw(msg.sender, sub_ccc1b0cd);
}

function sub_939b6a90(?) {
    require arg1 < 100
    mem[160] = stor[sha3((3 * arg1) + 11)]
    idx = 160
    s = 0
    while stor[(3 * arg1) + 11].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + 11) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor9[arg1], stor10[arg1], Array(len=stor[(3 * arg1) + 11].length, data=mem[160 len stor[(3 * arg1) + 11].length])
}

function sub_a2f507ec(?) {
    require arg1 < 100
    mem[224] = stor[sha3((3 * arg1) + 11)]
    idx = 224
    s = 0
    while stor[(3 * arg1) + 11].length + 224 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + 11) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor9[arg1], 
           stor10[arg1],
           Array(len=stor[(3 * arg1) + 11].length, data=mem[224 len stor[(3 * arg1) + 11].length + (floor32(stor[(3 * arg1) + 11].length - 1) + -stor[(3 * arg1) + 11].length + 32 % 32)])
}

function contracteeWithdraw(uint256 arg1) {
    require arg1 < 100
    if stor9[arg1] != msg.sender:
        require msg.sender == sub_f21376afAddress
    if stor10[arg1] > 0:
        stor10[arg1] = 0
        call stor9[arg1] with:
           value stor10[arg1] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        mem[224] = stor[sha3((3 * arg1) + 11)]
        idx = 224
        s = 0
        while stor[(3 * arg1) + 11].length + 224 > idx + 32:
            mem[idx + 32] = stor[s + sha3((3 * arg1) + 11) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        emit ContracteeWithdraw(msg.sender, stor10[arg1], Array(len=stor[(3 * arg1) + 11].length, data=mem[224 len stor[(3 * arg1) + 11].length + (floor32(stor[(3 * arg1) + 11].length - 1) + -stor[(3 * arg1) + 11].length + 32 % 32)]));
}



}
