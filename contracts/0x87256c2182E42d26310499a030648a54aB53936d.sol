contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() {
    stor0 = msg.sender
    stor6 = 0x3c1dfdf26eceae63417fb878d809a276bb562566
    address(stor1.field_0) = stor6
    Mask(96, 0, stor1.field_160) = 1
    stor2 = 100
    stor3 = 720 * 24 * 3600
    stor4 = 2400 * 24 * 3600
    stor5 = 8000
    return code.data[346 len 5678]
}



// =====================  Runtime code  =====================


const decimals = 4


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address collateralManagerAddress;
uint256 interestRatePerDay;
uint256 sub_26e86cd7;
uint256 sub_1348ed5e;
uint256 sub_a6d4ea46;
address stor6;
mapping of struct loans;

function active() {
    return bool(uint8(stor1.field_160))
}

function sub_1348ed5e(?) {
    return sub_1348ed5e
}

function collateralManager() {
    return collateralManagerAddress
}

function sub_26e86cd7(?) {
    return sub_26e86cd7
}

function loans(address arg1) {
    require loans[arg1].field_2560 <= 3
    return loans[arg1].field_0, 
           loans[arg1].field_256,
           loans[arg1].field_512,
           loans[arg1].field_768,
           loans[arg1].field_1024,
           loans[arg1].field_1280,
           loans[arg1].field_1536,
           loans[arg1].field_1792,
           loans[arg1].field_2048,
           loans[arg1].field_2304,
           loans[arg1].field_2560
}

function owner() {
    return owner
}

function sub_a6d4ea46(?) {
    return sub_a6d4ea46
}

function interestRatePerDay() {
    return interestRatePerDay
}

function _fallback() {
    revert
}

function refillBalance() payable {
    require msg.sender == owner
    return 1
}

function sub_a684a3d9(?) {
    require msg.sender == owner
    stor6 = arg1
    return 1
}

function sub_0ce6b419(?) {
    require msg.sender == owner
    sub_1348ed5e = arg1
    return 1
}

function sub_1d6a3ea0(?) {
    require msg.sender == owner
    sub_26e86cd7 = arg1
    return 1
}

function sub_e719dd6c(?) {
    require msg.sender == owner
    interestRatePerDay = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_2ef743a3(?) {
    require msg.sender == owner
    require arg1 <= 10000
    sub_a6d4ea46 = arg1
    return 1
}

function sub_fc5e1e67(?) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    return 1
}

function withdrawBalance(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_d3d7998d(?) {
    require ext_code.size(collateralManagerAddress)
    call collateralManagerAddress.0x9fc1afe7 with:
         gas gas_remaining - 710 wei
        args arg2, msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if ext_call.return_data[96]:
        require ext_call.return_data[96]
        require ext_call.return_data[96] * sub_a6d4ea46 / ext_call.return_data[96] == sub_a6d4ea46
    loans[address(ext_call.return_data[32])].field_0 = arg2
    loans[address(ext_call.return_data[32])].field_256 = arg1
    loans[address(ext_call.return_data[32])].field_512 = block.timestamp
    loans[address(ext_call.return_data[32])].field_768 = msg.sender
    loans[address(ext_call.return_data[32])].field_1024 = address(ext_call.return_data[32])
    loans[address(ext_call.return_data[32])].field_1280 = ext_call.return_data[96] * sub_a6d4ea46 / 10000
    loans[address(ext_call.return_data[32])].field_1536 = 0
    loans[address(ext_call.return_data[32])].field_1792 = 0
    loans[address(ext_call.return_data[32])].field_2048 = block.timestamp + sub_26e86cd7
    loans[address(ext_call.return_data[32])].field_2304 = interestRatePerDay
    loans[address(ext_call.return_data[32])].field_2560 = 1
    call msg.sender with:
       value ext_call.return_data[96] * sub_a6d4ea46 / 10000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x56f9ef49: arg2, msg.sender, ext_call.return_data[96] * sub_a6d4ea46 / 10000
    return 1
}

function closeLoan(address arg1) payable {
    require loans[address(arg1)].field_768 == msg.sender
    require loans[address(arg1)].field_2048 + sub_1348ed5e >= loans[address(arg1)].field_2048
    require loans[address(arg1)].field_2048 + sub_1348ed5e >= block.timestamp
    if loans[address(arg1)].field_1280:
        require loans[address(arg1)].field_1280
        require loans[address(arg1)].field_1280 * interestRatePerDay / loans[address(arg1)].field_1280 == interestRatePerDay
    if loans[address(arg1)].field_1280 * interestRatePerDay / 10000:
        require loans[address(arg1)].field_1280 * interestRatePerDay / 10000
        require loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600 / loans[address(arg1)].field_1280 * interestRatePerDay / 10000 == block.timestamp - loans[address(arg1)].field_512 / 24 * 3600
    require (loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280 >= loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600
    require (loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280 == msg.value
    loans[address(arg1)].field_2560 = 2
    loans[address(arg1)].field_1536 = msg.value
    loans[address(arg1)].field_1792 = block.timestamp
    require ext_code.size(collateralManagerAddress)
    call collateralManagerAddress.0x793f8de2 with:
         gas gas_remaining - 710 wei
        args loans[address(arg1)].field_0, msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x3f1f5a47: loans[address(arg1)].field_0, msg.sender, loans[address(arg1)].field_1536
    return 1
}

function amountOwed(address arg1) {
    if not loans[address(arg1)].field_1280:
        if not loans[address(arg1)].field_1280 * interestRatePerDay / 10000:
            if loans[address(arg1)].field_2048 < block.timestamp:
                return 0
            if (loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280 >= loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600:
                return ((loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280)
        else:
            if loans[address(arg1)].field_1280 * interestRatePerDay / 10000:
                if loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600 / loans[address(arg1)].field_1280 * interestRatePerDay / 10000 == block.timestamp - loans[address(arg1)].field_512 / 24 * 3600:
                    if loans[address(arg1)].field_2048 < block.timestamp:
                        return 0
                    if (loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280 >= loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600:
                        return ((loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280)
    else:
        if loans[address(arg1)].field_1280:
            if loans[address(arg1)].field_1280 * interestRatePerDay / loans[address(arg1)].field_1280 == interestRatePerDay:
                if not loans[address(arg1)].field_1280 * interestRatePerDay / 10000:
                    if loans[address(arg1)].field_2048 < block.timestamp:
                        return 0
                    if (loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280 >= loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600:
                        return ((loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280)
                else:
                    if loans[address(arg1)].field_1280 * interestRatePerDay / 10000:
                        if loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600 / loans[address(arg1)].field_1280 * interestRatePerDay / 10000 == block.timestamp - loans[address(arg1)].field_512 / 24 * 3600:
                            if loans[address(arg1)].field_2048 < block.timestamp:
                                return 0
                            if (loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280 >= loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600:
                                return ((loans[address(arg1)].field_1280 * interestRatePerDay / 10000 * block.timestamp - loans[address(arg1)].field_512 / 24 * 3600) + loans[address(arg1)].field_1280)
    revert
}



}
