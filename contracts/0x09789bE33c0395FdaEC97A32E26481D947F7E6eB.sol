contract main {


// =======================  Init code  ======================


uint8 stor0;
uint32 stor0; offset 8
uint32 stor0; offset 200
uint64 stor0; offset 200
address stor0; offset 40
uint32 stor1;
address stor1; offset 32
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint32 stor10; offset 48
uint256 stor11;
uint32 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint8 stor17;
uint8 stor19;
uint8 stor21;
address stor23; offset 16
uint256 stor23; offset 8
uint256 stor23;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    uint32(stor0.field_8) = uint32(block.timestamp)
    address(stor0.field_40) = msg.sender
    stor0.field_200 % 72057594037927936 = 0
    uint32(stor1.field_0) = uint32(block.timestamp)
    stor15 = 0
    stor17 = 0
    stor19 = 0
    stor21 = 0
    uint256(stor23.field_0) = 0x123456789abcdf012333456789abcdf0123456789abcdf0123456789abcdf0 * 3600 and uint256(stor23.field_0)
    require not msg.value
    uint32(stor1.field_0) = uint32(block.timestamp)
    require code.data[7907 len 20] != msg.sender
    require code.data[7959 len 32] >= 0
    require code.data[7959 len 32] <= 100 * 10^18
    require code.data[8023 len 32] >= 0
    require code.data[8023 len 32] <= 100 * 10^18
    require code.data[8087 len 32] >= 0
    require code.data[8087 len 32] <= 100 * 10^18
    address(stor23.field_16) = code.data[7779 len 20]
    stor3 = code.data[7799 len 32]
    uint32(stor0.field_200) = code.data[7859 len 4]
    require code.data[7863 len 32] <= 1
    if not code.data[7863 len 32]:
        address(stor1.field_32) = msg.sender
    else:
        address(stor1.field_32) = code.data[7907 len 20]
    require code.data[7863 len 32] <= 1
    if code.data[7863 len 32] == 1:
        stor2 = msg.sender
    else:
        stor2 = code.data[7907 len 20]
    stor4 = code.data[7927 len 32]
    stor7 = code.data[7959 len 32]
    stor10 = code.data[8019 len 4]
    require code.data[8119 len 32] <= 1
    Mask(248, 0, stor23.field_8) = code.data[8120 len 31]
    stor14 = code.data[7959 len 32] * code.data[7927 len 32] / 100 * 10^18
    stor5 = code.data[7927 len 32] / 100
    if not code.data[8119 len 32]:
        stor6 = code.data[7927 len 32] + stor5
    else:
        stor6 = code.data[7927 len 32]
        if stor14 >= stor5:
            stor14 -= stor5
        else:
            stor14 = 0
    if code.data[8023 len 32] > 0:
        require code.data[8087 len 32] <= -code.data[7959 len 32] + 100 * 10^18
        require code.data[8119 len 32] <= 1
        if code.data[8119 len 32] == 1:
            require code.data[7927 len 32]
            require code.data[8087 len 32] <= -(100 * 10^18 * stor5 / code.data[7927 len 32]) + 100 * 10^18
        stor11 = code.data[8023 len 32]
        stor12 = code.data[8083 len 4]
        stor13 = code.data[8087 len 32]
    return code.data[1028 len 6739]
}



// =====================  Runtime code  =====================


const version = ''


uint8 stage;
uint32 stageTime; offset 8
uint32 creationTime; offset 200
address creatorAddress; offset 40
uint32 sub_6635465e;
address clientAddress; offset 32
address contractorAddress;
uint256 sub_1b3012a3;
uint256 price;
uint256 sub_61f39fb5;
uint256 total;
uint256 sub_5b42969a;
uint256 sub_29193f09;
uint256 sub_43ea1474;
uint8 sub_9812bfb2;
uint8 sub_1a428adf; offset 8
uint32 sub_bfeb3d10; offset 16
uint32 sub_e61996a6; offset 48
uint32 sub_d97fec86; offset 80
uint32 sub_4eb4ca2e; offset 112
uint256 sub_870784b2;
uint32 sub_30d2437f;
uint256 sub_c07868c0;
uint256 downPayment;
uint8 stor15;
uint256 sub_4217fa6f;
uint8 stor17;
uint256 sub_b84317bf;
uint8 stor19;
uint256 sub_8b0da566;
uint8 stor21;
uint256 lateFee;
uint8 stor23;
uint8 sub_c489202c; offset 8
uint8 stor23; offset 176
address stor23; offset 16

function creator() {
    return creatorAddress
}

function client() {
    return clientAddress
}

function sub_1a428adf(?) {
    return bool(sub_1a428adf)
}

function sub_1b3012a3(?) {
    return sub_1b3012a3
}

function sub_29193f09(?) {
    return sub_29193f09
}

function stageTime() {
    return stageTime
}

function sub_2b5c46e9(?) {
    return bool(stor21)
}

function total() {
    return total
}

function sub_30d2437f(?) {
    return sub_30d2437f
}

function lateFee() {
    return lateFee
}

function sub_4217fa6f(?) {
    return sub_4217fa6f
}

function sub_43ea1474(?) {
    return sub_43ea1474
}

function sub_4eb4ca2e(?) {
    return sub_4eb4ca2e
}

function downPayment() {
    return downPayment
}

function sub_5b42969a(?) {
    return sub_5b42969a
}

function sub_61f39fb5(?) {
    return sub_61f39fb5
}

function sub_6635465e(?) {
    return sub_6635465e
}

function sub_870784b2(?) {
    return sub_870784b2
}

function sub_8b0da566(?) {
    return sub_8b0da566
}

function sub_9812bfb2(?) {
    return bool(sub_9812bfb2)
}

function price() {
    return price
}

function sub_b84317bf(?) {
    return sub_b84317bf
}

function sub_bfeb3d10(?) {
    return sub_bfeb3d10
}

function stage() {
    require stage <= 6
    return stage
}

function sub_c07868c0(?) {
    return sub_c07868c0
}

function sub_c3700467(?) {
    return bool(stor19)
}

function sub_c489202c(?) {
    require sub_c489202c <= 1
    return sub_c489202c
}

function sub_d1fd0433(?) {
    return bool(uint8(stor23.field_0))
}

function sub_d722118d(?) {
    return bool(stor17)
}

function creationTime() {
    return creationTime
}

function sub_d97fec86(?) {
    return sub_d97fec86
}

function sub_e61996a6(?) {
    return sub_e61996a6
}

function sub_f9f3a160(?) {
    return bool(stor15)
}

function contractor() {
    return contractorAddress
}

function destroy() {
    require stage <= 6
    require not stage
    require creatorAddress == msg.sender
    emit Destroy()
    selfdestruct(creatorAddress)
}

function _fallback() {
    revert
}

function sign() {
    require stage <= 6
    require not stage
    require creatorAddress != msg.sender
    require contractorAddress == msg.sender
    emit Sign()
    stage = 1
    stageTime = uint32(block.timestamp)
}

function sub_15e204fc(?) {
    require stage <= 6
    require stage == 5
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require clientAddress == msg.sender
    require sub_4217fa6f
    require not stor17
    call clientAddress with:
       value sub_4217fa6f wei
         gas gas_remaining - 34710 wei
    stor17 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x2639196a 
    uint8(stor23.field_176) = 0
}

function sub_8281a4cd(?) {
    require stage <= 6
    require stage == 5
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require contractorAddress == msg.sender
    require sub_b84317bf
    require not stor19
    call contractorAddress with:
       value sub_b84317bf wei
         gas gas_remaining - 34710 wei
    stor19 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x9e7810ac 
    uint8(stor23.field_176) = 0
}

function sub_b6631173(?) {
    require stage <= 6
    require stage == 4
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require contractorAddress == msg.sender
    require sub_8b0da566
    require not stor21
    call contractorAddress with:
       value sub_8b0da566 wei
         gas gas_remaining - 34710 wei
    stor21 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x3615a5d7 
    uint8(stor23.field_176) = 0
}

function sub_c26f834a(?) {
    require stage <= 6
    require stage == 4
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require clientAddress == msg.sender
    require lateFee
    require not uint8(stor23.field_0)
    call clientAddress with:
       value lateFee wei
         gas gas_remaining - 34710 wei
    uint8(stor23.field_0) = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0xad9e5573 
    uint8(stor23.field_176) = 0
}

function sub_f7be992a(?) {
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require contractorAddress == msg.sender
    require stage <= 6
    if stage != 2:
        require stage <= 6
        if stage != 5:
            require stage <= 6
            require stage == 4
    require downPayment
    require not stor15
    call contractorAddress with:
       value downPayment wei
         gas gas_remaining - 34710 wei
    stor15 = uint8(bool(ext_call.success))
    if uint8(bool(ext_call.success)):
        emit 0x1d652a5c 
    uint8(stor23.field_176) = 0
}

function pay() payable {
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require stage <= 6
    if creatorAddress == msg.sender:
        require stage == 1
    else:
        require not stage
        if creatorAddress == msg.sender:
            require stage <= 6
            require stage == 1
    require clientAddress == msg.sender
    require msg.value == total
    emit Pay()
    stage = 2
    stageTime = uint32(block.timestamp)
    sub_bfeb3d10 = uint32(block.timestamp)
    require ext_code.size(address(stor23.field_16))
    call address(stor23.field_16).0xddca3f43 with:
       value sub_61f39fb5 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    if downPayment > 0:
        call contractorAddress with:
           value downPayment wei
             gas 2300 * is_zero(value) wei
        stor15 = uint8(bool(ext_call.success))
    uint8(stor23.field_176) = 0
}

function sub_23d51c53(?) {
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require stage <= 6
    if stage != 2:
        require stage <= 6
        require stage == 3
    if clientAddress == msg.sender:
        if sub_d97fec86 != arg1:
            sub_d97fec86 = arg1
            emit 0x4554bab8 
            stage = 3
            stageTime = uint32(block.timestamp)
    else:
        require contractorAddress == msg.sender
        if sub_4eb4ca2e != arg1:
            sub_4eb4ca2e = arg1
            emit 0x4554bab8 
            stage = 3
            stageTime = uint32(block.timestamp)
    if sub_4eb4ca2e == sub_d97fec86:
        require sub_c489202c <= 1
        if sub_c489202c != 1:
            sub_8b0da566 = price - downPayment
        else:
            if downPayment >= sub_61f39fb5:
                sub_8b0da566 = price - downPayment
            else:
                sub_8b0da566 = price - sub_61f39fb5
        emit 0xfda53074 
        stage = 4
        stageTime = uint32(block.timestamp)
        if sub_870784b2 <= 0:
            if sub_8b0da566 > 0:
                call contractorAddress with:
                   value sub_8b0da566 wei
                     gas 2300 * is_zero(value) wei
                stor21 = uint8(bool(ext_call.success))
        else:
            if sub_d97fec86 <= sub_e61996a6:
                if sub_8b0da566 > 0:
                    call contractorAddress with:
                       value sub_8b0da566 wei
                         gas 2300 * is_zero(value) wei
                    stor21 = uint8(bool(ext_call.success))
            else:
                require sub_30d2437f
                if sub_870784b2 * uint32(uint32(sub_d97fec86 - sub_e61996a6) / sub_30d2437f) <= sub_c07868c0:
                    lateFee = sub_870784b2 * uint32(uint32(sub_d97fec86 - sub_e61996a6) / sub_30d2437f) * price / 100 * 10^18
                    sub_8b0da566 -= sub_870784b2 * uint32(uint32(sub_d97fec86 - sub_e61996a6) / sub_30d2437f) * price / 100 * 10^18
                    if sub_870784b2 * uint32(uint32(sub_d97fec86 - sub_e61996a6) / sub_30d2437f) * price / 100 * 10^18 > 0:
                        call clientAddress with:
                           value lateFee wei
                             gas 2300 * is_zero(value) wei
                        uint8(stor23.field_0) = uint8(bool(ext_call.success))
                    if sub_8b0da566 > 0:
                        call contractorAddress with:
                           value sub_8b0da566 wei
                             gas 2300 * is_zero(value) wei
                        stor21 = uint8(bool(ext_call.success))
                else:
                    lateFee = sub_c07868c0 * price / 100 * 10^18
                    sub_8b0da566 -= sub_c07868c0 * price / 100 * 10^18
                    if sub_c07868c0 * price / 100 * 10^18 > 0:
                        call clientAddress with:
                           value lateFee wei
                             gas 2300 * is_zero(value) wei
                        uint8(stor23.field_0) = uint8(bool(ext_call.success))
                    if sub_8b0da566 > 0:
                        call contractorAddress with:
                           value sub_8b0da566 wei
                             gas 2300 * is_zero(value) wei
                        stor21 = uint8(bool(ext_call.success))
    uint8(stor23.field_176) = 0
}

function terminate(uint256 arg1) {
    require not uint8(stor23.field_176)
    uint8(stor23.field_176) = 1
    require stage <= 6
    if stage != 2:
        require stage <= 6
        require stage == 6
    require arg1 >= 0
    require arg1 <= 100 * 10^18
    if clientAddress == msg.sender:
        if not sub_9812bfb2:
            sub_9812bfb2 = 1
            sub_29193f09 = arg1
            emit 0x424410e7 
            stage = 6
            stageTime = uint32(block.timestamp)
        else:
            if sub_29193f09 != arg1:
                sub_9812bfb2 = 1
                sub_29193f09 = arg1
                emit 0x424410e7 
                stage = 6
                stageTime = uint32(block.timestamp)
            if sub_9812bfb2:
                if sub_1a428adf:
                    if sub_29193f09 == sub_43ea1474:
                        if clientAddress != msg.sender:
                            require contractorAddress == msg.sender
                        sub_4217fa6f = (total * sub_29193f09) - (sub_61f39fb5 * sub_29193f09) - (downPayment * sub_29193f09) / 100 * 10^18
                        sub_b84317bf = total - sub_61f39fb5 - downPayment - ((total * sub_29193f09) - (sub_61f39fb5 * sub_29193f09) - (downPayment * sub_29193f09) / 100 * 10^18)
                        emit Terminate()
                        stage = 5
                        stageTime = uint32(block.timestamp)
                        if sub_4217fa6f > 0:
                            call clientAddress with:
                               value sub_4217fa6f wei
                                 gas 2300 * is_zero(value) wei
                            stor17 = uint8(bool(ext_call.success))
                        if sub_b84317bf > 0:
                            call contractorAddress with:
                               value sub_b84317bf wei
                                 gas 2300 * is_zero(value) wei
                            stor19 = uint8(bool(ext_call.success))
    else:
        require contractorAddress == msg.sender
        if not sub_1a428adf:
            sub_1a428adf = 1
            sub_43ea1474 = arg1
            emit 0x424410e7 
            stage = 6
            stageTime = uint32(block.timestamp)
        else:
            if sub_43ea1474 != arg1:
                sub_1a428adf = 1
                sub_43ea1474 = arg1
                emit 0x424410e7 
                stage = 6
                stageTime = uint32(block.timestamp)
        if sub_9812bfb2:
            if sub_1a428adf:
                if sub_29193f09 == sub_43ea1474:
                    if clientAddress != msg.sender:
                        require contractorAddress == msg.sender
                    sub_4217fa6f = (total * sub_29193f09) - (sub_61f39fb5 * sub_29193f09) - (downPayment * sub_29193f09) / 100 * 10^18
                    sub_b84317bf = total - sub_61f39fb5 - downPayment - ((total * sub_29193f09) - (sub_61f39fb5 * sub_29193f09) - (downPayment * sub_29193f09) / 100 * 10^18)
                    emit Terminate()
                    stage = 5
                    stageTime = uint32(block.timestamp)
                    if sub_4217fa6f > 0:
                        call clientAddress with:
                           value sub_4217fa6f wei
                             gas 2300 * is_zero(value) wei
                        stor17 = uint8(bool(ext_call.success))
                    if sub_b84317bf > 0:
                        call contractorAddress with:
                           value sub_b84317bf wei
                             gas 2300 * is_zero(value) wei
                        stor19 = uint8(bool(ext_call.success))
    uint8(stor23.field_176) = 0
}



}
