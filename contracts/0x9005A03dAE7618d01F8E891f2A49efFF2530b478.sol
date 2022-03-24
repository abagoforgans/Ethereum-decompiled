contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
uint256 stor10;

function _fallback() payable {
    require code.data[5947 len 20] != 0
    call address(stor10).0xd22c391a with:
         gas gas_remaining - 25050 wei
        args code.data[6031 len 32], code.data[6063 len 32], code.data[6095 len 32], code.data[6127 len 32], code.data[6159 len 32]
    require ext_call.success
    require ext_call.return_data[0]
    stor2 = code.data[5935 len 32] or Mask(96, 160, stor2)
    stor3 = code.data[5967 len 32]
    uint256(stor10) = code.data[5999 len 32] or Mask(96, 160, uint256(stor10))
    stor5 = code.data[6031 len 32]
    stor6 = code.data[6063 len 32]
    stor7 = code.data[6095 len 32]
    stor8 = code.data[6127 len 32]
    stor9 = code.data[6159 len 32]
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = (6 * stor4.length) + 6
        while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            address(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            address(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    uint256(stor4[stor4.length].field_0) = 0
    bool(stor4[stor4.length].field_256) = 0
    uint255(stor4[stor4.length].field_257) = 0
    Mask(248, 0, stor4[stor4.length].field_264) = mem[736 len 31]
    idx = 0
    while stor[(6 * stor4.length) + ('name', 'stor4', 4) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    address(stor4[stor4.length].field_512) = 0
    stor4[stor4.length].field_768 % 1 = 0
    address(stor4[stor4.length].field_768) = 0
    stor4[stor4.length].field_1024 % 1 = 0
    uint256(stor4[stor4.length].field_1024) = 0
    address(stor4[stor4.length].field_1280) = 0
    return code.data[868 len 5067]
}



// =====================  Runtime code  =====================


uint8 stor0;
mapping of uint256 fundsOf;
address topWizardAddress;
uint256 stor2;
uint256 kingdomCreationFeeWei;
array of struct stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address kingdomFactoryAddress;
uint256 stor10;
mapping of uint256 stor11;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856480;

function kingdomFactory() payable {
    return address(kingdomFactoryAddress)
}

function fundsOf(address arg1) payable {
    return fundsOf[address(arg1)]
}

function kingdomCreationFeeWei() payable {
    return kingdomCreationFeeWei
}

function topWizard() payable {
    return address(topWizardAddress)
}

function numberOfKingdoms() payable {
    return (stor4.length - 1)
}

function sub_ed60ef56(?) payable {
    return stor5, stor6, stor7, stor8, stor9
}

function kingdomCreationFeeInFinney() payable {
    return (kingdomCreationFeeWei + 999999999999999 / 10^15)
}

function setCreationFee(uint256 arg1) payable {
    require not stor0
    stor0 = 1
    require msg.sender == address(topWizardAddress)
    require 0 == msg.value
    kingdomCreationFeeWei = arg1
    emit CreationFeeChangedEvent(arg1);
    stor0 = 0
}

function setKingdomFactory(address arg1) payable {
    require not stor0
    stor0 = 1
    require msg.sender == address(topWizardAddress)
    require 0 == msg.value
    uint256(stor10) = arg1 or Mask(96, 160, uint256(stor10))
    emit FactoryChangedEvent(arg1);
    stor0 = 0
}

function replaceWizard(address arg1) payable {
    require not stor0
    stor0 = 1
    require msg.sender == address(topWizardAddress)
    require 0 == msg.value
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit WizardReplacedEvent(address(topWizardAddress), arg1);
    stor0 = 0
}

function validateProposedThroneRules(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    call address(kingdomFactoryAddress).0xd22c391a with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), arg2, arg3, arg4, arg5
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function withdrawFundsAdvanced(address arg1, uint256 arg2, uint256 arg3) payable {
    require not stor0
    stor0 = 1
    require 0 == msg.value
    require arg2 <= fundsOf[address(msg.sender)]
    fundsOf[address(msg.sender)] -= arg2
    call arg1 with:
       value arg2 wei
         gas arg3 wei
    require ext_call.success
    emit FundsWithdrawnEvent(msg.sender, address(arg1), arg2);
    stor0 = 0
}

function withdrawFunds() payable {
    require not stor0
    stor0 = 1
    require 0 == msg.value
    require fundsOf[address(msg.sender)] <= fundsOf[address(msg.sender)]
    fundsOf[address(msg.sender)] = 0
    call msg.sender with:
       value fundsOf[address(msg.sender)] wei
         gas 23000 wei
    require ext_call.success
    emit FundsWithdrawnEvent(msg.sender, msg.sender, fundsOf[address(msg.sender)]);
    stor0 = 0
}

function sub_540f9ab4(?) payable {
    require not stor0
    stor0 = 1
    require msg.sender == address(topWizardAddress)
    require 0 == msg.value
    call address(kingdomFactoryAddress).0xd22c391a with:
         gas gas_remaining - 25050 wei
        args 0, arg1, arg2, arg3, arg4, arg5
    require ext_call.success
    require ext_call.return_data[0]
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    stor8 = arg4
    stor9 = arg5
    emit 0xbc1e32ea 
    stor0 = 0
}

function kingdomsByNumber(uint256 arg1) payable {
    require arg1 < stor4.length
    mem[320] = uint256(stor[sha3((6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)])
    idx = 320
    s = 0
    while stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(stor4[arg1].field_0), 
           Array(len=stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length, data=mem[320 len stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + (floor32(stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length - 1) + -stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 32 % 32)]),
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1]
}

function validateProposedKingdomName(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    if arg1.length < 1:
        return 0
    if arg1.length > 25:
        return 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                s = 1
                continue 
            if Mask(8, 248, mem[idx + 128]) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    s = 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        s = 1
                        continue 
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != '!':
                if Mask(8, 248, mem[idx + 128]) != '(':
                    if Mask(8, 248, mem[idx + 128]) != ')':
                        if Mask(8, 248, mem[idx + 128]) != '-':
                            if Mask(8, 248, mem[idx + 128]) != '.':
                                if Mask(8, 248, mem[idx + 128]) != '_':
                                    return 0
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s
        continue 
    return bool(s)
}

function findKingdomCalled(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    if arg1.length <= 25:
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            s = mem[idx + 128 len 1]
            s = Mask(8, 248, mem[idx + 128])
            s = 128
            idx = idx + 1
            s = (128 * s) + mem[idx + 128 len 1] - 32
            continue 
    else:
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < 25:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            s = mem[idx + 128 len 1]
            s = Mask(8, 248, mem[idx + 128])
            s = 128
            idx = idx + 1
            s = (128 * s) + mem[idx + 128 len 1] - 32
            continue 
    return stor11[s]
}

function sub_356859d9(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not stor0
    stor0 = 1
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length >= 1
    require arg1.length <= 25
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                s = 1
                continue 
            if Mask(8, 248, mem[idx + 128]) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    s = 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        s = 1
                        continue 
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != '!':
                if Mask(8, 248, mem[idx + 128]) != '(':
                    if Mask(8, 248, mem[idx + 128]) != ')':
                        if Mask(8, 248, mem[idx + 128]) != '-':
                            if Mask(8, 248, mem[idx + 128]) != '.':
                                require '_' == Mask(8, 248, mem[idx + 128])
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s
        continue 
    require s
    mem[64] = ceil32(arg1.length) + 192
    mem[ceil32(arg1.length) + 160] = 0
    if arg1.length <= 25:
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            s = mem[idx + 128 len 1]
            s = Mask(8, 248, mem[idx + 128])
            s = 128
            idx = idx + 1
            s = (128 * s) + mem[idx + 128 len 1] - 32
            continue 
    else:
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < 25:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            s = mem[idx + 128 len 1]
            s = Mask(8, 248, mem[idx + 128])
            s = 128
            idx = idx + 1
            s = (128 * s) + mem[idx + 128 len 1] - 32
            continue 
    require 0 == stor11[s]
    stor11[s] = stor4.length
    require msg.value >= kingdomCreationFeeWei
    require msg.value - kingdomCreationFeeWei <= 10^15
    fundsOf[address(stor2)] += msg.value
    call address(kingdomFactoryAddress).0xc090b86d with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all]), address(this.address), address(topWizardAddress), address(arg2), arg3, arg4, arg5, arg6, arg7
    require ext_call.success
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = (6 * stor4.length) + 6
        while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            address(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            address(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    uint256(stor4[stor4.length].field_0) = stor4.length
    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor4[stor4.length].field_512) = ext_call.return_data[0] or Mask(96, 160, uint256(stor4[stor4.length].field_512))
    uint256(stor4[stor4.length].field_768) = msg.sender or Mask(96, 160, uint256(stor4[stor4.length].field_768))
    uint256(stor4[stor4.length].field_1024) = block.timestamp
    address(stor4[stor4.length].field_1280) = address(kingdomFactoryAddress)
    stor0 = 0
}

function sub_efef1a95(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require not stor0
    stor0 = 1
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length >= 1
    require arg1.length <= 25
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = Mask(8, 248, mem[idx + 128])
                idx = idx + 1
                s = 1
                continue 
            if Mask(8, 248, mem[idx + 128]) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + 128])
                    idx = idx + 1
                    s = 1
                    continue 
                if Mask(8, 248, mem[idx + 128]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + 128])
                        idx = idx + 1
                        s = 1
                        continue 
        if Mask(8, 248, mem[idx + 128]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != '!':
                if Mask(8, 248, mem[idx + 128]) != '(':
                    if Mask(8, 248, mem[idx + 128]) != ')':
                        if Mask(8, 248, mem[idx + 128]) != '-':
                            if Mask(8, 248, mem[idx + 128]) != '.':
                                require '_' == Mask(8, 248, mem[idx + 128])
        s = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s
        continue 
    require s
    mem[64] = ceil32(arg1.length) + 192
    mem[ceil32(arg1.length) + 160] = 0
    if arg1.length <= 25:
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            s = mem[idx + 128 len 1]
            s = Mask(8, 248, mem[idx + 128])
            s = 128
            idx = idx + 1
            s = (128 * s) + mem[idx + 128 len 1] - 32
            continue 
    else:
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < 25:
            require idx < arg1.length
            if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = mem[idx + 128 len 1] + (128 * s)
                continue 
            if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                s = mem[idx + 128 len 1]
                s = Mask(8, 248, mem[idx + 128])
                s = 128
                idx = idx + 1
                s = s
                continue 
            s = mem[idx + 128 len 1]
            s = Mask(8, 248, mem[idx + 128])
            s = 128
            idx = idx + 1
            s = (128 * s) + mem[idx + 128 len 1] - 32
            continue 
    require 0 == stor11[s]
    stor11[s] = stor4.length
    require msg.value >= kingdomCreationFeeWei
    require msg.value - kingdomCreationFeeWei <= 10^15
    fundsOf[address(stor2)] += msg.value
    call address(kingdomFactoryAddress).0xc090b86d with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all]), address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9
    require ext_call.success
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = (6 * stor4.length) + 6
        while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            address(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            address(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    uint256(stor4[stor4.length].field_0) = stor4.length
    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor4[stor4.length].field_512) = ext_call.return_data[0] or Mask(96, 160, uint256(stor4[stor4.length].field_512))
    uint256(stor4[stor4.length].field_768) = msg.sender or Mask(96, 160, uint256(stor4[stor4.length].field_768))
    uint256(stor4[stor4.length].field_1024) = block.timestamp
    address(stor4[stor4.length].field_1280) = address(kingdomFactoryAddress)
    stor0 = 0
}

function _fallback() payable {
    require not stor0
    stor0 = 1
    mem[96] = 0
    require calldata.size
    mem[128] = calldata.size
    mem[160 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + 160] = 0
    mem[ceil32(calldata.size) + 192] = 0
    mem[64] = ceil32(calldata.size) + 288
    mem[ceil32(calldata.size) + 224] = 5
    mem[ceil32(calldata.size) + 256] = 0x4e414d453a000000000000000000000000000000000000000000000000000000
    require calldata.size >= 5
    idx = 0
    while idx < 5:
        require idx < mem[128]
        _14 = mem[idx + 160]
        _15 = mem[64]
        mem[64] = mem[64] + 64
        mem[_15] = 5
        mem[_15 + 32] = 0x4e414d453a000000000000000000000000000000000000000000000000000000
        require idx < 5
        require Mask(8, 248, mem[idx + _15 + 32]) == Mask(8, 248, _14)
        idx = idx + 1
        continue 
    _12 = mem[128]
    require mem[128] - 5 >= 1
    require mem[128] - 5 <= 25
    _18 = mem[64]
    if msize >= mem[64]:
        _msize = max(ceil32(calldata.size) + 224, _15)
        mem[_msize + 64] = mem[128] - 5
        idx = 0
        while idx < _12 - 5:
            require idx + 5 < mem[128]
            require idx < mem[_msize + 64]
            mem[(_msize + 64) + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 165, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 165, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        mem[64] = (_msize + 64) + (32 * _12 - 5) + 64
        mem[(_msize + 64) + (32 * _12 - 5) + 32] = 0
        require mem[max(ceil32(calldata.size) + 224, _15) + 64] >= 1
        require mem[max(ceil32(calldata.size) + 224, _15) + 64] <= 25
        s = 0
        idx = 0
        s = 0
        while idx < mem[_msize + 64]:
            require idx < mem[_msize + 64]
            if Mask(8, 248, mem[idx + (_msize + 64) + 32]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    idx = idx + 1
                    s = 1
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                        idx = idx + 1
                        s = 1
                        continue 
                    if Mask(8, 248, mem[idx + (_msize + 64) + 32]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                            s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                            idx = idx + 1
                            s = 1
                            continue 
            if Mask(8, 248, mem[idx + (_msize + 64) + 32]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) != '!':
                    if Mask(8, 248, mem[idx + (_msize + 64) + 32]) != '(':
                        if Mask(8, 248, mem[idx + (_msize + 64) + 32]) != ')':
                            if Mask(8, 248, mem[idx + (_msize + 64) + 32]) != '-':
                                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) != '.':
                                    require '_' == Mask(8, 248, mem[idx + (_msize + 64) + 32])
            s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
            idx = idx + 1
            s = s
            continue 
        require s
        mem[64] = (_msize + 64) + (32 * _12 - 5) + 96
        mem[(_msize + 64) + (32 * _12 - 5) + 64] = 0
        if mem[max(ceil32(calldata.size) + 224, _15) + 64] <= 25:
            s = 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < mem[_msize + 64]:
                require idx < mem[_msize + 64]
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + (_msize + 64) + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + (_msize + 64) + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                s = mem[idx + (_msize + 64) + 32 len 1]
                s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                s = 128
                idx = idx + 1
                s = (128 * s) + mem[idx + (_msize + 64) + 32 len 1] - 32
                continue 
            require 0 == stor11[s]
            stor11[s] = stor4.length
            require msg.value >= kingdomCreationFeeWei
            require msg.value - kingdomCreationFeeWei <= 10^15
            mem[0] = address(topWizardAddress)
            mem[32] = 1
            fundsOf[address(stor2)] += msg.value
            mem[(_msize + 64) + (32 * _12 - 5) + 96] = 0xc090b86d00000000000000000000000000000000000000000000000000000000
            mem[(_msize + 64) + (32 * _12 - 5) + 132] = this.address
            mem[(_msize + 64) + (32 * _12 - 5) + 164] = address(topWizardAddress)
            mem[(_msize + 64) + (32 * _12 - 5) + 196] = msg.sender
            mem[(_msize + 64) + (32 * _12 - 5) + 228] = stor5
            mem[(_msize + 64) + (32 * _12 - 5) + 260] = stor6
            mem[(_msize + 64) + (32 * _12 - 5) + 292] = stor7
            mem[(_msize + 64) + (32 * _12 - 5) + 324] = stor8
            mem[(_msize + 64) + (32 * _12 - 5) + 356] = stor9
            mem[(_msize + 64) + (32 * _12 - 5) + 100] = 288
            mem[(_msize + 64) + (32 * _12 - 5) + 388] = mem[_msize + 64]
            mem[(_msize + 64) + (32 * _12 - 5) + 420 len mem[_msize + 64]] = mem[(_msize + 64) + 32 len mem[_msize + 64]]
            if not mem[max(ceil32(calldata.size) + 224, _15) + 64] % 32:
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[(_msize + 64) + (32 * _12 - 5) + 388 len mem[_msize + 64] + 32]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _333 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_333, data=mem[(_msize + 64) + 32 len _333])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _735 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_735, data=mem[(_msize + 64) + 32 len _735])
            else:
                mem[floor32(mem[_msize + 64]) + (_msize + 64) + (32 * _12 - 5) + 420] = mem[floor32(mem[_msize + 64]) + (_msize + 64) + (32 * _12 - 5) + -(mem[_msize + 64] % 32) + 452 len mem[_msize + 64] % 32]
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[_msize + 64], mem[_msize + (32 * _12 - 5) + 484 len floor32(mem[_msize + 64]) + 32]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _368 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_368, data=mem[(_msize + 64) + 32 len _368])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _750 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_750, data=mem[(_msize + 64) + 32 len _750])
        else:
            s = 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < 25:
                require idx < mem[_msize + 64]
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + (_msize + 64) + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + (_msize + 64) + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + (_msize + 64) + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + (_msize + 64) + 32 len 1]
                    s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                s = mem[idx + (_msize + 64) + 32 len 1]
                s = Mask(8, 248, mem[idx + (_msize + 64) + 32])
                s = 128
                idx = idx + 1
                s = (128 * s) + mem[idx + (_msize + 64) + 32 len 1] - 32
                continue 
            require 0 == stor11[s]
            stor11[s] = stor4.length
            require msg.value >= kingdomCreationFeeWei
            require msg.value - kingdomCreationFeeWei <= 10^15
            mem[0] = address(topWizardAddress)
            mem[32] = 1
            fundsOf[address(stor2)] += msg.value
            mem[(_msize + 64) + (32 * _12 - 5) + 96] = 0xc090b86d00000000000000000000000000000000000000000000000000000000
            mem[(_msize + 64) + (32 * _12 - 5) + 132] = this.address
            mem[(_msize + 64) + (32 * _12 - 5) + 164] = address(topWizardAddress)
            mem[(_msize + 64) + (32 * _12 - 5) + 196] = msg.sender
            mem[(_msize + 64) + (32 * _12 - 5) + 228] = stor5
            mem[(_msize + 64) + (32 * _12 - 5) + 260] = stor6
            mem[(_msize + 64) + (32 * _12 - 5) + 292] = stor7
            mem[(_msize + 64) + (32 * _12 - 5) + 324] = stor8
            mem[(_msize + 64) + (32 * _12 - 5) + 356] = stor9
            mem[(_msize + 64) + (32 * _12 - 5) + 100] = 288
            mem[(_msize + 64) + (32 * _12 - 5) + 388] = mem[_msize + 64]
            mem[(_msize + 64) + (32 * _12 - 5) + 420 len mem[_msize + 64]] = mem[(_msize + 64) + 32 len mem[_msize + 64]]
            if not mem[max(ceil32(calldata.size) + 224, _15) + 64] % 32:
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[(_msize + 64) + (32 * _12 - 5) + 388 len mem[_msize + 64] + 32]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _342 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_342, data=mem[(_msize + 64) + 32 len _342])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _765 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_765, data=mem[(_msize + 64) + 32 len _765])
            else:
                mem[floor32(mem[_msize + 64]) + (_msize + 64) + (32 * _12 - 5) + 420] = mem[floor32(mem[_msize + 64]) + (_msize + 64) + (32 * _12 - 5) + -(mem[_msize + 64] % 32) + 452 len mem[_msize + 64] % 32]
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[_msize + 64], mem[_msize + (32 * _12 - 5) + 484 len floor32(mem[_msize + 64]) + 32]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _376 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_376, data=mem[(_msize + 64) + 32 len _376])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    mem[64] = (_msize + 64) + (32 * _12 - 5) + 288
                    mem[(_msize + 64) + (32 * _12 - 5) + 96] = stor4.length
                    mem[(_msize + 64) + (32 * _12 - 5) + 128] = _msize + 64
                    mem[(_msize + 64) + (32 * _12 - 5) + 160] = ext_call.return_data[0]
                    mem[(_msize + 64) + (32 * _12 - 5) + 192] = msg.sender
                    mem[(_msize + 64) + (32 * _12 - 5) + 224] = block.timestamp
                    mem[(_msize + 64) + (32 * _12 - 5) + 256] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _780 = mem[_msize + 64]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_780, data=mem[(_msize + 64) + 32 len _780])
    else:
        mem[mem[64]] = mem[128] - 5
        mem[64] = mem[64] + (32 * _12 - 5) + 32
        idx = 0
        while idx < _12 - 5:
            require idx + 5 < mem[128]
            require idx < mem[_18]
            mem[_18 + idx + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 165, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 165, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            continue 
        _41 = mem[64]
        mem[64] = mem[64] + 32
        mem[_41] = 0
        require mem[_18] >= 1
        require mem[_18] <= 25
        s = 0
        idx = 0
        s = 0
        while idx < mem[_18]:
            require idx < mem[_18]
            if Mask(8, 248, mem[idx + _18 + 32]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + _18 + 32]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    idx = idx + 1
                    s = 1
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) >= 0x4100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + _18 + 32]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                        s = Mask(8, 248, mem[idx + _18 + 32])
                        idx = idx + 1
                        s = 1
                        continue 
                    if Mask(8, 248, mem[idx + _18 + 32]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + _18 + 32]) <= 0x7a00000000000000000000000000000000000000000000000000000000000000:
                            s = Mask(8, 248, mem[idx + _18 + 32])
                            idx = idx + 1
                            s = 1
                            continue 
            if Mask(8, 248, mem[idx + _18 + 32]) != 0x2000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + _18 + 32]) != '!':
                    if Mask(8, 248, mem[idx + _18 + 32]) != '(':
                        if Mask(8, 248, mem[idx + _18 + 32]) != ')':
                            if Mask(8, 248, mem[idx + _18 + 32]) != '-':
                                if Mask(8, 248, mem[idx + _18 + 32]) != '.':
                                    require '_' == Mask(8, 248, mem[idx + _18 + 32])
            s = Mask(8, 248, mem[idx + _18 + 32])
            idx = idx + 1
            s = s
            continue 
        require s
        _53 = mem[64]
        mem[64] = mem[64] + 32
        mem[_53] = 0
        if mem[_18] <= 25:
            s = 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < mem[_18]:
                require idx < mem[_18]
                if Mask(8, 248, mem[idx + _18 + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + _18 + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + _18 + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                s = mem[idx + _18 + 32 len 1]
                s = Mask(8, 248, mem[idx + _18 + 32])
                s = 128
                idx = idx + 1
                s = (128 * s) + mem[idx + _18 + 32 len 1] - 32
                continue 
            require 0 == stor11[s]
            stor11[s] = stor4.length
            require msg.value >= kingdomCreationFeeWei
            require msg.value - kingdomCreationFeeWei <= 10^15
            mem[0] = address(topWizardAddress)
            mem[32] = 1
            fundsOf[address(stor2)] += msg.value
            mem[mem[64]] = 0xc090b86d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = address(topWizardAddress)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = stor5
            mem[mem[64] + 164] = stor6
            mem[mem[64] + 196] = stor7
            mem[mem[64] + 228] = stor8
            mem[mem[64] + 260] = stor9
            mem[mem[64] + 4] = 288
            mem[mem[64] + 292] = mem[_18]
            _278 = mem[_18]
            mem[mem[64] + 324 len mem[_18]] = mem[_18 + 32 len mem[_18]]
            if not _278 % 32:
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[mem[64] + 292 len _278 + 32]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    _312 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_312] = stor4.length
                    mem[_312 + 32] = _18
                    mem[_312 + 64] = ext_call.return_data[0]
                    mem[_312 + 96] = msg.sender
                    mem[_312 + 128] = block.timestamp
                    mem[_312 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _315 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_315, data=mem[_18 + 32 len _315])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    _672 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_672] = stor4.length
                    mem[_672 + 32] = _18
                    mem[_672 + 64] = ext_call.return_data[0]
                    mem[_672 + 96] = msg.sender
                    mem[_672 + 128] = block.timestamp
                    mem[_672 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _675 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_675, data=mem[_18 + 32 len _675])
            else:
                mem[floor32(_278) + mem[64] + 324] = mem[floor32(_278) + mem[64] + -(_278 % 32) + 356 len _278 % 32]
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[mem[64] + 292 len floor32(_278) + 64]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    _349 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_349] = stor4.length
                    mem[_349 + 32] = _18
                    mem[_349 + 64] = ext_call.return_data[0]
                    mem[_349 + 96] = msg.sender
                    mem[_349 + 128] = block.timestamp
                    mem[_349 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _352 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_352, data=mem[_18 + 32 len _352])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    _687 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_687] = stor4.length
                    mem[_687 + 32] = _18
                    mem[_687 + 64] = ext_call.return_data[0]
                    mem[_687 + 96] = msg.sender
                    mem[_687 + 128] = block.timestamp
                    mem[_687 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _690 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_690, data=mem[_18 + 32 len _690])
        else:
            s = 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < 25:
                require idx < mem[_18]
                if Mask(8, 248, mem[idx + _18 + 32]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + _18 + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) <= 0x5a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = mem[idx + _18 + 32 len 1] + (128 * s)
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                if Mask(8, 248, mem[idx + _18 + 32]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                    s = mem[idx + _18 + 32 len 1]
                    s = Mask(8, 248, mem[idx + _18 + 32])
                    s = 128
                    idx = idx + 1
                    s = s
                    continue 
                s = mem[idx + _18 + 32 len 1]
                s = Mask(8, 248, mem[idx + _18 + 32])
                s = 128
                idx = idx + 1
                s = (128 * s) + mem[idx + _18 + 32 len 1] - 32
                continue 
            require 0 == stor11[s]
            stor11[s] = stor4.length
            require msg.value >= kingdomCreationFeeWei
            require msg.value - kingdomCreationFeeWei <= 10^15
            mem[0] = address(topWizardAddress)
            mem[32] = 1
            fundsOf[address(stor2)] += msg.value
            mem[mem[64]] = 0xc090b86d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = address(topWizardAddress)
            mem[mem[64] + 100] = msg.sender
            mem[mem[64] + 132] = stor5
            mem[mem[64] + 164] = stor6
            mem[mem[64] + 196] = stor7
            mem[mem[64] + 228] = stor8
            mem[mem[64] + 260] = stor9
            mem[mem[64] + 4] = 288
            mem[mem[64] + 292] = mem[_18]
            _282 = mem[_18]
            mem[mem[64] + 324 len mem[_18]] = mem[_18 + 32 len mem[_18]]
            if not _282 % 32:
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[mem[64] + 292 len _282 + 32]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    _321 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_321] = stor4.length
                    mem[_321 + 32] = _18
                    mem[_321 + 64] = ext_call.return_data[0]
                    mem[_321 + 96] = msg.sender
                    mem[_321 + 128] = block.timestamp
                    mem[_321 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _324 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_324, data=mem[_18 + 32 len _324])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    _702 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_702] = stor4.length
                    mem[_702 + 32] = _18
                    mem[_702 + 64] = ext_call.return_data[0]
                    mem[_702 + 96] = msg.sender
                    mem[_702 + 128] = block.timestamp
                    mem[_702 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _705 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_705, data=mem[_18 + 32 len _705])
            else:
                mem[floor32(_282) + mem[64] + 324] = mem[floor32(_282) + mem[64] + -(_282 % 32) + 356 len _282 % 32]
                call address(kingdomFactoryAddress).0xc090b86d with:
                     gas gas_remaining - 25050 wei
                    args 288, address(this.address), address(topWizardAddress), msg.sender, stor5, stor6, stor7, stor8, stor9, mem[mem[64] + 292 len floor32(_282) + 64]
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                stor4.length++
                mem[0] = 4
                if not stor4.length > stor4.length + 1:
                    _357 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_357] = stor4.length
                    mem[_357 + 32] = _18
                    mem[_357 + 64] = ext_call.return_data[0]
                    mem[_357 + 96] = msg.sender
                    mem[_357 + 128] = block.timestamp
                    mem[_357 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _360 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_360, data=mem[_18 + 32 len _360])
                else:
                    idx = (6 * stor4.length) + 6
                    while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
                        uint256(stor[idx + sha3(mem[0])]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 1].length:
                            mem[0] = idx + sha3(mem[0]) + 1
                            s = sha3(idx + sha3(mem[0]) + 1)
                            while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        address(stor[idx + sha3(mem[0]) + 2]) = 0
                        address(stor[idx + sha3(mem[0]) + 3]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        address(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = 4
                    _717 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_717] = stor4.length
                    mem[_717 + 32] = _18
                    mem[_717 + 64] = ext_call.return_data[0]
                    mem[_717 + 96] = msg.sender
                    mem[_717 + 128] = block.timestamp
                    mem[_717 + 160] = address(kingdomFactoryAddress)
                    uint256(stor4[stor4.length].field_0) = stor4.length
                    _720 = mem[_18]
                    uint256(stor[sha3((6 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=_720, data=mem[_18 + 32 len _720])
    uint256(stor4[stor4.length].field_512) = ext_call.return_data[0] or Mask(96, 160, uint256(stor4[stor4.length].field_512))
    uint256(stor4[stor4.length].field_768) = msg.sender or Mask(96, 160, uint256(stor4[stor4.length].field_768))
    uint256(stor4[stor4.length].field_1024) = block.timestamp
    address(stor4[stor4.length].field_1280) = address(kingdomFactoryAddress)
    stor0 = 0
}



}
