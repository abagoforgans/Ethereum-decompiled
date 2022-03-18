contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint256 stor2;
mapping of struct stor3;

function _fallback() payable {
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    uint256(stor0) = code.data[7256 len 32]
    stor2 = 0
    call code.data[7268 len 20].0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 'wallet/accounting'
    require ext_call.success
    if not stor3[ext_call.return_data[12 len 20]].field_0:
        stor3[address(ext_call.return_data[0])].field_256 = 0
        stor3[address(ext_call.return_data[0])].field_512 = block.timestamp
        stor3[address(ext_call.return_data[0])].field_0 = 1
        emit 0xef4ab4f3: address(ext_call.return_data[0])
    call address(stor0).0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 'wallet/txfee'
    require ext_call.success
    if not stor3[ext_call.return_data[12 len 20]].field_0:
        stor3[address(ext_call.return_data[0])].field_256 = 0
        stor3[address(ext_call.return_data[0])].field_512 = block.timestamp
        stor3[address(ext_call.return_data[0])].field_0 = 1
        emit 0xef4ab4f3: address(ext_call.return_data[0])
    return code.data[486 len 6770]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address configAddress;
address owner;
uint256 stor1;
uint256 totalSupply;
mapping of struct userExists;

function userExists(address arg1) payable {
    return userExists[address(arg1)].field_0
}

function actualBalanceOf(address arg1) payable {
    return userExists[address(arg1)].field_256
}

function totalSupply() payable {
    return totalSupply
}

function getConfigAddress() payable {
    return configAddress
}

function config() payable {
    return configAddress
}

function getOwner() payable {
    return address(owner)
}

function owner() payable {
    return address(owner)
}

function allowance(address arg1, address arg2) payable {
    return userExists[address(arg1)][3][address(arg2)].field_0
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function approve(address arg1, uint256 arg2) payable {
    userExists[address(msg.sender)][3][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isAdmin(address arg1) payable {
    call configAddress.0x24d7806c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function txFee() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/txfee' << 144)
    require ext_call.success
    return ext_call.return_data[0]
}

function getBase() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_65448a76(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c1a27089(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/recastfee' << 112)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4a619fa6(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function redemptionFee() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/redemptionfee' << 80)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_82e717f7(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/confirmations' << 80)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_4e03ab49(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function billingPeriod() payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_d3dd22da(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f74786665656d6178000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function goldRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_46396e18(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x6c65646765722f746f6b656e0000000000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function sub_694d98e5(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f7265636173740000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function vendorRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function minterContract() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function auditorRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function custodianRegistry() payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function isGoldRegistry(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    return (ext_call.return_data[12 len 20] == arg1)
}

function sub_0627f5a9(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    return (block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0])
}

function sub_9dec628b(?) payable {
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    return (arg1 * ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function isVendor(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f76656e646f720000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xee54d54f with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function isAuditor(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f61756469746f7200000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x49b90557 with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function isCustodian(address arg1) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f637573746f6469616e0000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x35c80c8c with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function sub_4e0fb2a4(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    userExists[ext_call.return_data[12 len 20]].field_256 = 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    userExists[ext_call.return_data[12 len 20]].field_256 = 0
    userExists[ext_call.return_data[12 len 20]].field_257 = userExists[ext_call.return_data[12 len 20]].field_256
    return 1
}

function calculateTxFee(uint256 arg1, address arg2) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg2 == ext_call.return_data[12 len 20]:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    if arg2 == ext_call.return_data[12 len 20]:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/txfee' << 144)
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f74786665656d6178000000000000000000000000000000
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] <= ext_call.return_data[0]:
        return (arg1 * ext_call.return_data[0] / ext_call.return_data[0])
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f74786665656d6178000000000000000000000000000000
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_377141d9(?) payable {
    if 0 == userExists[address(arg1)].field_256:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg1 == ext_call.return_data[12 len 20]:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    if arg1 == ext_call.return_data[12 len 20]:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    if 0 == block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0]:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    return (userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0])
}

function balanceOf(address arg1) payable {
    if 0 == arg1:
        return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg1 == ext_call.return_data[12 len 20]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/accounting' << 120)
        require ext_call.success
        return userExists[ext_call.return_data[12 len 20]].field_256
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    if arg1 == ext_call.return_data[12 len 20]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/txfee' << 160)
        require ext_call.success
        return userExists[ext_call.return_data[12 len 20]].field_256
    if not userExists[address(arg1)].field_256:
        return 0
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    if block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] <= 0:
        return userExists[address(arg1)].field_256
    if 0 == userExists[address(arg1)].field_256:
        return userExists[address(arg1)].field_256
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg1 == ext_call.return_data[12 len 20]:
        return userExists[address(arg1)].field_256
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/txfee' << 160)
    require ext_call.success
    if arg1 == ext_call.return_data[12 len 20]:
        return userExists[address(arg1)].field_256
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    if 0 == block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0]:
        return userExists[address(arg1)].field_256
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
    require ext_call.success
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/rate' << 152)
    call configAddress.0x855fe6ed with:
         gas gas_remaining - 25050 wei
        args ('settings/base' << 152)
    return (userExists[address(arg1)].field_256 - (userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]))
}

function sub_8facfa01(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg1 != ext_call.return_data[12 len 20]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/txfee' << 160)
        require ext_call.success
        if arg1 != ext_call.return_data[12 len 20]:
            if 0 == userExists[address(arg1)].field_256:
                userExists[address(arg1)].field_512 = block.timestamp
            else:
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                require ext_call.success
                if block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] != 0:
                    if 0 == userExists[address(arg1)].field_256:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                    else:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/accounting' << 120)
                        require ext_call.success
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        if arg1 == ext_call.return_data[12 len 20]:
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                            call configAddress.0x4cb44f8d with:
                                 gas gas_remaining - 25050 wei
                                args ('wallet/txfee' << 160)
                            emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                        else:
                            if arg1 == ext_call.return_data[12 len 20]:
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                require ext_call.success
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                            else:
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                require ext_call.success
                                if 0 == block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0]:
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                                else:
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/rate' << 152)
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/base' << 152)
                                    userExists[address(arg1)].field_256 -= userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    userExists[ext_call.return_data[12 len 20]].field_256 += userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: arg1, address(ext_call.return_data[0]), userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
    return 1
}

function sub_64e1721c(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    if not userExists[address(arg1)].field_0:
        if not userExists[address(arg1)].field_0:
            userExists[address(arg1)].field_256 = 0
            userExists[address(arg1)].field_512 = block.timestamp
            userExists[address(arg1)].field_0 = 1
            emit 0xef4ab4f3: arg1
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg1 != ext_call.return_data[12 len 20]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/txfee' << 160)
        require ext_call.success
        if arg1 != ext_call.return_data[12 len 20]:
            if 0 == userExists[address(arg1)].field_256:
                userExists[address(arg1)].field_512 = block.timestamp
            else:
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                require ext_call.success
                if block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] != 0:
                    if 0 == userExists[address(arg1)].field_256:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                    else:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/accounting' << 120)
                        require ext_call.success
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        if arg1 == ext_call.return_data[12 len 20]:
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                            call configAddress.0x4cb44f8d with:
                                 gas gas_remaining - 25050 wei
                                args ('wallet/txfee' << 160)
                            emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                        else:
                            if arg1 == ext_call.return_data[12 len 20]:
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                require ext_call.success
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                            else:
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                require ext_call.success
                                if 0 == block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0]:
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                                else:
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/rate' << 152)
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/base' << 152)
                                    userExists[address(arg1)].field_256 -= userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    userExists[ext_call.return_data[12 len 20]].field_256 += userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: arg1, address(ext_call.return_data[0]), userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    userExists[ext_call.return_data[12 len 20]].field_256 += arg3
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), arg3
    userExists[address(arg1)].field_256 = arg2 - arg3 + userExists[address(arg1)].field_256
    totalSupply = arg2 + arg3 + totalSupply
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f6d696e7465720000000000000000000000000000000000
    emit 0x56ddf252: address(ext_call.return_data[0]), tx.origin, arg2 - arg3
    return 1
}

function sub_d60f66de(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x636f6e74726163742f7265636173740000000000000000000000000000000000
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    if not userExists[address(arg1)].field_0:
        if not userExists[address(arg1)].field_0:
            userExists[address(arg1)].field_256 = 0
            userExists[address(arg1)].field_512 = block.timestamp
            userExists[address(arg1)].field_0 = 1
            emit 0xef4ab4f3: arg1
    if 0 == arg1:
        if 0 < arg3 + arg2:
            return 0
    else:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/accounting' << 120)
        require ext_call.success
        if arg1 == ext_call.return_data[12 len 20]:
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args ('wallet/accounting' << 120)
            require ext_call.success
            if userExists[ext_call.return_data[12 len 20]].field_256 < arg3 + arg2:
                return 0
        else:
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args ('wallet/txfee' << 160)
            require ext_call.success
            if arg1 == ext_call.return_data[12 len 20]:
                call configAddress.0x4cb44f8d with:
                     gas gas_remaining - 25050 wei
                    args ('wallet/txfee' << 160)
                require ext_call.success
                if userExists[ext_call.return_data[12 len 20]].field_256 < arg3 + arg2:
                    return 0
            else:
                if not userExists[address(arg1)].field_256:
                    if 0 < arg3 + arg2:
                        return 0
                else:
                    call configAddress.0x855fe6ed with:
                         gas gas_remaining - 25050 wei
                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                    require ext_call.success
                    if block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] <= 0:
                        if userExists[address(arg1)].field_256 < arg3 + arg2:
                            return 0
                    else:
                        if 0 == userExists[address(arg1)].field_256:
                            if userExists[address(arg1)].field_256 < arg3 + arg2:
                                return 0
                        else:
                            call configAddress.0x4cb44f8d with:
                                 gas gas_remaining - 25050 wei
                                args ('wallet/accounting' << 120)
                            require ext_call.success
                            if arg1 == ext_call.return_data[12 len 20]:
                                if userExists[address(arg1)].field_256 < arg3 + arg2:
                                    return 0
                            else:
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                require ext_call.success
                                if arg1 == ext_call.return_data[12 len 20]:
                                    if userExists[address(arg1)].field_256 < arg3 + arg2:
                                        return 0
                                else:
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    require ext_call.success
                                    if 0 == block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0]:
                                        if userExists[address(arg1)].field_256 < arg3 + arg2:
                                            return 0
                                    else:
                                        call configAddress.0x855fe6ed with:
                                             gas gas_remaining - 25050 wei
                                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                        require ext_call.success
                                        call configAddress.0x855fe6ed with:
                                             gas gas_remaining - 25050 wei
                                            args ('settings/rate' << 152)
                                        call configAddress.0x855fe6ed with:
                                             gas gas_remaining - 25050 wei
                                            args ('settings/base' << 152)
                                        if userExists[address(arg1)].field_256 - (userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]) < arg3 + arg2:
                                            return 0
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if arg1 != ext_call.return_data[12 len 20]:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/txfee' << 160)
        require ext_call.success
        if arg1 != ext_call.return_data[12 len 20]:
            if 0 == userExists[address(arg1)].field_256:
                userExists[address(arg1)].field_512 = block.timestamp
            else:
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                require ext_call.success
                if block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] != 0:
                    if 0 == userExists[address(arg1)].field_256:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                    else:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/accounting' << 120)
                        require ext_call.success
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        if arg1 == ext_call.return_data[12 len 20]:
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                            call configAddress.0x4cb44f8d with:
                                 gas gas_remaining - 25050 wei
                                args ('wallet/txfee' << 160)
                            emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                        else:
                            if arg1 == ext_call.return_data[12 len 20]:
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                require ext_call.success
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                            else:
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                require ext_call.success
                                if 0 == block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0]:
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: arg1, address(ext_call.return_data[0]), 0
                                else:
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/rate' << 152)
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/base' << 152)
                                    userExists[address(arg1)].field_256 -= userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    userExists[ext_call.return_data[12 len 20]].field_256 += userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[address(arg1)].field_512 += block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: arg1, address(ext_call.return_data[0]), userExists[address(arg1)].field_256 * ext_call.return_data[0] * block.timestamp - userExists[address(arg1)].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
    userExists[address(arg1)].field_256 = userExists[address(arg1)].field_256 - arg3 - arg2
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    userExists[ext_call.return_data[12 len 20]].field_256 += arg3
    totalSupply -= arg2
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), arg3
    emit 0x56ddf252: tx.origin, 0, arg2
    return 1
}

function sub_fd6e248e(?) payable {
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0xb88c9148 with:
         gas gas_remaining - 25050 wei
        args arg1
    if not userExists[tx.origin].field_0:
        if not userExists[tx.origin].field_0:
            userExists[tx.origin].field_256 = 0
            userExists[tx.origin].field_512 = block.timestamp
            userExists[tx.origin].field_0 = 1
            emit 0xef4ab4f3: tx.origin
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    if ext_call.return_data[12 len 20] != tx.origin:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/txfee' << 160)
        require ext_call.success
        if ext_call.return_data[12 len 20] != tx.origin:
            if 0 == userExists[tx.origin].field_256:
                userExists[tx.origin].field_512 = block.timestamp
            else:
                call configAddress.0x855fe6ed with:
                     gas gas_remaining - 25050 wei
                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                require ext_call.success
                if block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] != 0:
                    if 0 == userExists[tx.origin].field_256:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        call configAddress.0x855fe6ed with:
                             gas gas_remaining - 25050 wei
                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                        userExists[tx.origin].field_512 += block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), 0
                    else:
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/accounting' << 120)
                        require ext_call.success
                        call configAddress.0x4cb44f8d with:
                             gas gas_remaining - 25050 wei
                            args ('wallet/txfee' << 160)
                        require ext_call.success
                        if tx.origin == ext_call.return_data[12 len 20]:
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            call configAddress.0x855fe6ed with:
                                 gas gas_remaining - 25050 wei
                                args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                            userExists[tx.origin].field_512 += block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                            call configAddress.0x4cb44f8d with:
                                 gas gas_remaining - 25050 wei
                                args ('wallet/txfee' << 160)
                            emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), 0
                        else:
                            if tx.origin == ext_call.return_data[12 len 20]:
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                require ext_call.success
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                userExists[tx.origin].field_512 += block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), 0
                            else:
                                call configAddress.0x855fe6ed with:
                                     gas gas_remaining - 25050 wei
                                    args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                require ext_call.success
                                if 0 == block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0]:
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[tx.origin].field_512 += block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), 0
                                else:
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    require ext_call.success
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/rate' << 152)
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args ('settings/base' << 152)
                                    userExists[tx.origin].field_256 -= userExists[tx.origin].field_256 * ext_call.return_data[0] * block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    userExists[ext_call.return_data[12 len 20]].field_256 += userExists[tx.origin].field_256 * ext_call.return_data[0] * block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    userExists[tx.origin].field_512 += block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] * ext_call.return_data[0]
                                    call configAddress.0x4cb44f8d with:
                                         gas gas_remaining - 25050 wei
                                        args ('wallet/txfee' << 160)
                                    emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), userExists[tx.origin].field_256 * ext_call.return_data[0] * block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] / ext_call.return_data[0]
    if 0 == tx.origin:
        require 0 >= ext_call.return_data[0]
    else:
        call configAddress.0x4cb44f8d with:
             gas gas_remaining - 25050 wei
            args ('wallet/accounting' << 120)
        require ext_call.success
        if tx.origin == ext_call.return_data[12 len 20]:
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args ('wallet/accounting' << 120)
            require ext_call.success
            require userExists[ext_call.return_data[12 len 20]].field_256 >= ext_call.return_data[0]
        else:
            call configAddress.0x4cb44f8d with:
                 gas gas_remaining - 25050 wei
                args ('wallet/txfee' << 160)
            require ext_call.success
            if tx.origin == ext_call.return_data[12 len 20]:
                call configAddress.0x4cb44f8d with:
                     gas gas_remaining - 25050 wei
                    args ('wallet/txfee' << 160)
                require ext_call.success
                require userExists[ext_call.return_data[12 len 20]].field_256 >= ext_call.return_data[0]
            else:
                if not userExists[tx.origin].field_256:
                    require 0 >= ext_call.return_data[0]
                else:
                    call configAddress.0x855fe6ed with:
                         gas gas_remaining - 25050 wei
                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                    require ext_call.success
                    if block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] <= 0:
                        require userExists[tx.origin].field_256 >= ext_call.return_data[0]
                    else:
                        if 0 == userExists[tx.origin].field_256:
                            require userExists[tx.origin].field_256 >= ext_call.return_data[0]
                        else:
                            call configAddress.0x4cb44f8d with:
                                 gas gas_remaining - 25050 wei
                                args ('wallet/accounting' << 120)
                            require ext_call.success
                            if tx.origin == ext_call.return_data[12 len 20]:
                                require userExists[tx.origin].field_256 >= ext_call.return_data[0]
                            else:
                                call configAddress.0x4cb44f8d with:
                                     gas gas_remaining - 25050 wei
                                    args ('wallet/txfee' << 160)
                                require ext_call.success
                                if tx.origin == ext_call.return_data[12 len 20]:
                                    require userExists[tx.origin].field_256 >= ext_call.return_data[0]
                                else:
                                    call configAddress.0x855fe6ed with:
                                         gas gas_remaining - 25050 wei
                                        args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                    require ext_call.success
                                    if 0 == block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0]:
                                        require userExists[tx.origin].field_256 >= ext_call.return_data[0]
                                    else:
                                        call configAddress.0x855fe6ed with:
                                             gas gas_remaining - 25050 wei
                                            args 0x73657474696e67732f62696c6c696e67706572696f6400000000000000000000
                                        require ext_call.success
                                        call configAddress.0x855fe6ed with:
                                             gas gas_remaining - 25050 wei
                                            args ('settings/rate' << 152)
                                        call configAddress.0x855fe6ed with:
                                             gas gas_remaining - 25050 wei
                                            args ('settings/base' << 152)
                                        require userExists[tx.origin].field_256 - (userExists[tx.origin].field_256 * ext_call.return_data[0] * block.timestamp - userExists[tx.origin].field_512 / ext_call.return_data[0] / ext_call.return_data[0]) >= ext_call.return_data[0]
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args 0x72656769737472792f676f6c6400000000000000000000000000000000000000
    require ext_call.success
    call address(ext_call.return_data[0]).0x65afd0ed with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.return_data[0]
    userExists[tx.origin].field_256 -= ext_call.return_data[0]
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    require ext_call.success
    userExists[ext_call.return_data[12 len 20]].field_256 += ext_call.return_data[0]
    call configAddress.0x4cb44f8d with:
         gas gas_remaining - 25050 wei
        args ('wallet/accounting' << 120)
    emit 0x56ddf252: tx.origin, address(ext_call.return_data[0]), ext_call.return_data[0]
}



}
