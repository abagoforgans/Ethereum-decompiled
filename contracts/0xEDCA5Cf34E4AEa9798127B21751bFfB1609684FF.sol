contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    require code.data[4937 len 20] != 0
    require code.data[5021 len 32] >= 10^18
    stor2 = code.data[4925 len 32]
    stor3 = code.data[4957 len 32]
    stor6 = code.data[4989 len 32] or Mask(96, 160, stor6)
    stor5 = code.data[5021 len 32]
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
    Mask(248, 0, stor4[stor4.length].field_264) = mem[448 len 31]
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
    return code.data[654 len 4271]
}



// =====================  Runtime code  =====================


uint8 stor0;
mapping of uint256 fundsOf;
address topWizardAddress;
uint256 stor2;
uint256 kingdomCreationFeeWei;
array of struct stor4;
uint256 maximumClaimPriceWei;
address kingdomFactoryAddress;
uint256 stor6;
mapping of uint256 stor7;
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

function maximumClaimPriceWei() payable {
    return maximumClaimPriceWei
}

function kingdomCreationFeeWei() payable {
    return kingdomCreationFeeWei
}

function topWizard() payable {
    return address(topWizardAddress)
}

function _fallback() payable {
    revert 
}

function numberOfKingdoms() payable {
    return (stor4.length - 1)
}

function kingdomCreationFeeInFinney() payable {
    return (kingdomCreationFeeWei + 999999999999999 / 10^15)
}

function setMaximumClaimPriceWei(uint256 arg1) payable {
    require not stor0
    stor0 = 1
    require msg.sender == address(topWizardAddress)
    require 0 == msg.value
    require arg1 >= 10^18
    maximumClaimPriceWei = arg1
    stor0 = 0
}

function setKingdomCreationFeeWei(uint256 arg1) payable {
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
    uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
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

function validateProposedThroneRules(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    call address(kingdomFactoryAddress).0xd22c391a with:
         gas gas_remaining - 25050 wei
        args 0, uint32(arg1), maximumClaimPriceWei, arg2, arg3, arg4
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
    return stor7[s]
}

function createKingdom(string arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
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
    require 0 == stor7[s]
    stor7[s] = stor4.length
    require msg.value >= kingdomCreationFeeWei
    require msg.value - kingdomCreationFeeWei <= 10^15
    fundsOf[address(stor2)] += msg.value
    call address(kingdomFactoryAddress).0xc090b86d with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all]), address(this.address), address(topWizardAddress), msg.sender, arg2, maximumClaimPriceWei, arg3, arg4, arg5
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



}
