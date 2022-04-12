contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() {
    stor0 = msg.sender
    stor10 = 10^14
    stor11 = 5 * 10^18
    stor9 = 100
    return code.data[133 len 10666]
}



// =====================  Runtime code  =====================


address owner;
mapping of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of struct stor5;
address sub_f5a3f4afAddress;
address sub_aeb0e8ccAddress;
address feeRecipientAddress;
uint256 feePercent;
uint256 minimumAmount;
uint256 maximumAmount;

function feeRecipient() {
    return feeRecipientAddress
}

function feePercent() {
    return feePercent
}

function owner() {
    return owner
}

function maximumAmount() {
    return maximumAmount
}

function sub_aeb0e8cc(?) {
    return sub_aeb0e8ccAddress
}

function minimumAmount() {
    return minimumAmount
}

function sub_f5a3f4af(?) {
    return sub_f5a3f4afAddress
}

function _fallback() payable {
    revert
}

function setFeePercent(uint256 arg1) {
    require msg.sender == owner
    feePercent = arg1
}

function setFeeRecipient(address arg1) {
    require msg.sender == owner
    feeRecipientAddress = arg1
}

function setDisputeResolver(address arg1) {
    require msg.sender == owner
    sub_f5a3f4afAddress = arg1
}

function setDisputeInterface(address arg1) {
    require msg.sender == owner
    sub_aeb0e8ccAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setSpecialFeePercent(address arg1, uint256 arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = arg2
}

function getFeePercent() {
    if stor2[address(msg.sender)] <= 0:
        return feePercent
    return stor2[address(msg.sender)]
}

function getMaxAmount() {
    if stor4[address(msg.sender)] <= 0:
        return maximumAmount
    return stor4[address(msg.sender)]
}

function getMinAmount() {
    if stor3[address(msg.sender)] <= 0:
        return minimumAmount
    return stor3[address(msg.sender)]
}

function setLimits(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < arg2
    minimumAmount = arg1
    maximumAmount = arg2
}

function setSpecialLimits(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2 < arg3
    stor3[address(arg1)] = arg2
    stor4[address(arg1)] = arg3
}

function setDisputed(address arg1, string arg2) {
    require msg.sender == sub_aeb0e8ccAddress
    require stor5[address(arg1)][arg2[all]].field_768 <= 5
    require stor5[address(arg1)][arg2[all]].field_768 == 1
    stor5[address(arg1)][arg2[all]].field_768 = 3
    emit OrderDisputed(address(arg1), Array(len=arg2.length, data=arg2[all]), stor5[address(arg1)][arg2[all]].field_0);
}

function resolveDisputeSeller(address arg1, string arg2) {
    require msg.sender == sub_aeb0e8ccAddress
    require stor5[address(arg1)][arg2[all]].field_768 <= 5
    require stor5[address(arg1)][arg2[all]].field_768 == 3
    require stor5[address(arg1)][arg2[all]].field_256 + stor5[address(arg1)][arg2[all]].field_512 >= stor5[address(arg1)][arg2[all]].field_256
    call arg1 with:
       value stor5[address(arg1)][arg2[all]].field_256 + stor5[address(arg1)][arg2[all]].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor5[address(arg1)][arg2[all]].field_768 = 4
    mem[96 len arg2.length] = arg2[all]
    mem[128] = arg1
    mem[160] = stor5[address(arg1)][arg2[all]].field_0
    mem[224] = arg2.length
    mem[256 len arg2.length] = arg2[all]
    mem[192] = arg2.length + 160
    emit DisputeResolved(string rg1, address rg2, address rg3, string rg4):
                         arg2[all],
                         sha3(address(arg1), 5),
                         mem[arg2.length + 128 len 128],
                         6,
                         'seller',
}

function resolveDisputeBuyer(address arg1, string arg2) {
    require msg.sender == sub_aeb0e8ccAddress
    require stor5[address(arg1)][arg2[all]].field_768 <= 5
    require stor5[address(arg1)][arg2[all]].field_768 == 3
    call stor5[address(arg1)][arg2[all]].field_0 with:
       value stor5[address(arg1)][arg2[all]].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not stor1[address(arg1)]:
        call feeRecipientAddress with:
           value stor5[address(arg1)][arg2[all]].field_512 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor1[address(arg1)] with:
           value stor5[address(arg1)][arg2[all]].field_512 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor5[address(arg1)][arg2[all]].field_768 = 5
    mem[96 len arg2.length] = arg2[all]
    mem[128] = arg1
    mem[160] = stor5[address(arg1)][arg2[all]].field_0
    mem[224] = arg2.length
    mem[256 len arg2.length] = arg2[all]
    mem[192] = arg2.length + 160
    emit DisputeResolved(string rg1, address rg2, address rg3, string rg4):
                         arg2[all],
                         sha3(address(arg1), 5),
                         mem[arg2.length + 128 len 128],
                         5,
                         'buyer',
}

function completeOrder(string arg1) {
    require stor5[address(msg.sender)][arg1[all]].field_768 <= 5
    if stor5[address(msg.sender)][arg1[all]].field_768 != 1:
        require stor5[address(msg.sender)][arg1[all]].field_768 <= 5
        require stor5[address(msg.sender)][arg1[all]].field_768 == 3
    call stor5[address(msg.sender)][arg1[all]].field_0 with:
       value stor5[address(msg.sender)][arg1[all]].field_256 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not stor1[address(msg.sender)]:
        call feeRecipientAddress with:
           value stor5[address(msg.sender)][arg1[all]].field_512 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor1[address(msg.sender)] with:
           value stor5[address(msg.sender)][arg1[all]].field_512 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    require stor5[address(msg.sender)][arg1[all]].field_768 <= 5
    if stor5[address(msg.sender)][arg1[all]].field_768 != 1:
        stor5[address(msg.sender)][arg1[all]].field_768 = 5
        mem[96 len arg1.length] = arg1[all]
        mem[128] = msg.sender
        mem[160] = stor5[address(msg.sender)][arg1[all]].field_0
        mem[224] = arg1.length
        mem[256 len arg1.length] = arg1[all]
        mem[192] = arg1.length + 160
        emit DisputeResolved(string rg1, address rg2, address rg3, string rg4):
                             arg1[all],
                             sha3(address(msg.sender), 5),
                             mem[arg1.length + 128 len 128],
                             5,
                             'buyer',
    else:
        stor5[address(msg.sender)][arg1[all]].field_768 = 2
        mem[96 len arg1.length] = arg1[all]
        mem[128] = msg.sender
        mem[160] = stor5[address(msg.sender)][arg1[all]].field_0
        mem[192] = stor5[address(msg.sender)][arg1[all]].field_256
        mem[224] = arg1.length
        mem[256 len arg1.length] = arg1[all]
        emit OrderCompleted(string rg1, address rg2, address rg3, uint256 rg4):
                            arg1[all],
                            sha3(address(msg.sender), 5),
                            mem[arg1.length + 128 len 128],
}

function sub_473fa383(?) payable {
    require ext_code.size(msg.sender) <= 0
    if arg3:
        require arg3
        require 100 * arg3 / arg3 == 100
    if stor2[address(msg.sender)] <= 0:
        if 100 * arg3:
            require 100 * arg3
            require 100 * arg3 * feePercent / 100 * arg3 == feePercent
        require ext_code.size(arg2) <= 0
        require msg.value == arg3 + (100 * arg3 * feePercent / 10^6)
        if stor3[address(msg.sender)] <= 0:
            require arg3 >= minimumAmount
        else:
            require arg3 >= stor3[address(msg.sender)]
        if stor4[address(msg.sender)] <= 0:
            require arg3 <= maximumAmount
        else:
            require arg3 <= stor4[address(msg.sender)]
        require stor5[address(msg.sender)][arg1[all]].field_768 <= 5
        require not stor5[address(msg.sender)][arg1[all]].field_768
        stor5[address(msg.sender)][arg1[all]].field_0 = arg2
        stor5[address(msg.sender)][arg1[all]].field_256 = arg3
        stor5[address(msg.sender)][arg1[all]].field_512 = 100 * arg3 * feePercent / 10^6
    else:
        if 100 * arg3:
            require 100 * arg3
            require 100 * arg3 * stor2[address(msg.sender)] / 100 * arg3 == stor2[address(msg.sender)]
        require ext_code.size(arg2) <= 0
        require msg.value == arg3 + (100 * arg3 * stor2[address(msg.sender)] / 10^6)
        if stor3[address(msg.sender)] <= 0:
            require arg3 >= minimumAmount
        else:
            require arg3 >= stor3[address(msg.sender)]
        if stor4[address(msg.sender)] <= 0:
            require arg3 <= maximumAmount
        else:
            require arg3 <= stor4[address(msg.sender)]
        require stor5[address(msg.sender)][arg1[all]].field_768 <= 5
        require not stor5[address(msg.sender)][arg1[all]].field_768
        stor5[address(msg.sender)][arg1[all]].field_0 = arg2
        stor5[address(msg.sender)][arg1[all]].field_256 = arg3
        stor5[address(msg.sender)][arg1[all]].field_512 = 100 * arg3 * stor2[address(msg.sender)] / 10^6
    mem[96 len arg1.length] = arg1[all]
    stor5[address(msg.sender)][arg1[all]].field_768 = 1
    mem[128] = msg.sender
    mem[160] = arg2
    mem[192] = arg3
    mem[224] = arg4
    mem[288] = arg1.length
    mem[320 len arg1.length] = arg1[all]
    mem[256] = arg1.length + 224
    emit OrderAdded(string rg1, address rg2, address rg3, uint256 rg4, uint256 rg5, string rg6):
                    arg1[all],
                    sha3(address(msg.sender), 5),
                    mem[arg1.length + 128 len 192],
                    arg5.length,
                    arg5[all],
}



}
