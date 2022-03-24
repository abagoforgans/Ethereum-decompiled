contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
bool stor2; offset 256
uint8 stor2;
uint32 stor2; offset 8

function _fallback() payable {
    stor1 = 0
    uint8(stor2.field_0) = 1
    uint32(stor2.field_8) = 0
    stor2.field_256 % 1 = 0
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    return code.data[65 len 7749]
}



// =====================  Runtime code  =====================


address stor0;
uint256 bankOwner_GetDonationsBalance;
uint8 stor2;
uint32 stor2; offset 8
uint256 stor2; offset 8
array of struct stor3;
mapping of struct getBankAccountNumber;
mapping of uint8 stor99;
array of uint256 getBankAccountBalance;
array of struct security_GetNumberOfAttemptsToConnectBankAccountToANewOwner;
array of uint256 stor41956153280094398020401985346513055068147381566897900288728451170068195144185;
array of uint256 stor41956153280094398020401985346513055068147381566897900288728451170068195144187;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

function GetBankAccountNumber() payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    emit event_getBankAccountNumber_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8));
    return uint32(getBankAccountNumber[address(msg.sender)].field_8)
}

function BankOwner_GetDonationsBalance() payable {
    require msg.sender == stor0
    require msg.value <= 0
    emit event_getBankDonationsBalance(bankOwner_GetDonationsBalance);
    return bankOwner_GetDonationsBalance
}

function GetBankAccountBalance() payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    emit event_getBankAccountBalance_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8), getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)]);
    return getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)]
}

function Security_GetNumberOfAttemptsToConnectBankAccountToANewOwnerAddress() payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    emit event_securityGetNumberOfAttemptsToConnectBankAccountToANewOwnerAddress(uint32(getBankAccountNumber[address(msg.sender)].field_8), uint32(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[uint32(stor4[address(msg.sender)].field_8)].field_40));
    return uint32(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[uint32(stor4[address(msg.sender)].field_8)].field_40)
}

function Donate() payable {
    if msg.value > 0:
        bankOwner_GetDonationsBalance += msg.value
        emit event_donationMadeToBank_ThankYou(msg.value);
}

function BankOwner_DisableConnectBankAccountToNewOwnerAddress() payable {
    require msg.sender == stor0
    if uint8(stor2.field_0):
        uint8(stor2.field_0) = 0
}

function BankOwner_EnableConnectBankAccountToNewOwnerAddress() payable {
    require msg.sender == stor0
    if 0 == bool(uint8(stor2.field_0)):
        uint8(stor2.field_0) = 1
}

function BankOwner_WithdrawDonations() payable {
    require msg.sender == stor0
    require msg.value <= 0
    if bankOwner_GetDonationsBalance > 0:
        bankOwner_GetDonationsBalance = 0
        call msg.sender with:
           value bankOwner_GetDonationsBalance wei
             gas 0 wei
        if not ext_call.success:
            call msg.sender with:
               value bankOwner_GetDonationsBalance wei
                 gas gas_remaining - 34050 wei
        else:
            emit event_bankDonationsWithdrawn(bankOwner_GetDonationsBalance);
}

function DepositToBankAccountFromDifferentAddress(uint32 arg1) payable {
    if arg1 >= uint32(stor2.field_8):
        emit event_depositMadeToBankAccountFromDifferentAddress_Failed(arg1, msg.sender, msg.value);
        return 0
    if msg.value <= 0:
        emit event_depositMadeToBankAccountFromDifferentAddress_Failed(arg1, msg.sender, msg.value);
        return 0
    require arg1 < stor3.length
    require getBankAccountBalance[arg1] + msg.value >= getBankAccountBalance[arg1]
    require arg1 < stor3.length
    getBankAccountBalance[arg1] += msg.value
    emit event_depositMadeToBankAccountFromDifferentAddress_Successful(arg1, msg.sender, msg.value);
    return 1
}

function Security_HasPasswordSha3HashBeenAddedToBankAccount() payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    if not uint8(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[uint32(stor4[address(msg.sender)].field_8)].field_0):
        emit event_securityHasPasswordSha3HashBeenAddedToBankAccount_No(uint32(getBankAccountNumber[address(msg.sender)].field_8));
        return 0
    emit event_securityHasPasswordSha3HashBeenAddedToBankAccount_Yes(uint32(getBankAccountNumber[address(msg.sender)].field_8));
    return 1
}

function DepositToBankAccount() payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    if msg.value <= 0:
        emit event_depositMadeToBankAccount_Failed(0, msg.value);
        return 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] + msg.value >= getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)]
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] += msg.value
    emit event_depositMadeToBankAccount_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8), msg.value);
    return 1
}

function WithdrawAmountFromBankAccount(uint256 arg1) payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    if arg1 > 0:
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        if getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] >= arg1:
            require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
            getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 0 wei
            if ext_call.success:
                emit event_withdrawalMadeFromBankAccount_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8), arg1);
                return 1
            call msg.sender with:
               value arg1 wei
                 gas gas_remaining - 34050 wei
            require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
            getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] += arg1
    emit event_withdrawalMadeFromBankAccount_Failed(uint32(getBankAccountNumber[address(msg.sender)].field_8), arg1);
    return 0
}

function TransferAmountFromBankAccountToAddress(uint256 arg1, address arg2) payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    if arg1 > 0:
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        if getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] >= arg1:
            require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
            getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] -= arg1
            call arg2 with:
               value arg1 wei
                 gas 0 wei
            if ext_call.success:
                emit event_transferMadeFromBankAccountToAddress_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8), arg1, arg2);
                return 1
            call arg2 with:
               value arg1 wei
                 gas gas_remaining - 34050 wei
            require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
            getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] += arg1
    emit event_transferMadeFromBankAccountToAddress_Failed(uint32(getBankAccountNumber[address(msg.sender)].field_8), arg1, arg2);
    return 0
}

function Security_AddPasswordSha3HashToBankAccount(bytes32 arg1) payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    if 1 == bool(uint8(stor[(5 * uint32(stor4[address(msg.sender)].field_8)) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a1][arg1])):
        emit event_securityPasswordSha3HashAddedToBankAccount_Failed_PasswordHashPreviouslyUsed(uint32(getBankAccountNumber[address(msg.sender)].field_8));
        return 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    uint8(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[uint32(stor4[address(msg.sender)].field_8)].field_0) = 1
    storC257[uint32(stor4[address(msg.sender)].field_8)] = arg1
    uint8(stor[(5 * uint32(stor4[address(msg.sender)].field_8)) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a1][arg1]) = 1
    uint32(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[uint32(stor4[address(msg.sender)].field_8)].field_40) = 0
    emit event_securityPasswordSha3HashAddedToBankAccount_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8));
    return 1
}

function WithdrawFullBalanceFromBankAccount() payable {
    require bool(uint8(getBankAccountNumber[address(msg.sender)].field_0)) != 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    require msg.sender == address(stor[code.data[7717 len 32] + (5 * uint32(stor4[address(msg.sender)].field_8))])
    require msg.value <= 0
    require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
    if getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] <= 0:
        emit event_withdrawalMadeFromBankAccount_Failed(uint32(getBankAccountNumber[address(msg.sender)].field_8), 0);
    else:
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] = 0
        call msg.sender with:
           value stor5CC2[uint32(stor4[address(msg.sender)].field_8)] wei
             gas 0 wei
        if ext_call.success:
            emit event_withdrawalMadeFromBankAccount_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8), stor5CC2[uint32(stor4[address(msg.sender)].field_8)]);
            return 1
        call msg.sender with:
           value stor5CC2[uint32(stor4[address(msg.sender)].field_8)] wei
             gas gas_remaining - 34050 wei
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] = stor5CC2[uint32(stor4[address(msg.sender)].field_8)]
        emit event_withdrawalMadeFromBankAccount_Failed(uint32(getBankAccountNumber[address(msg.sender)].field_8), stor5CC2[uint32(stor4[address(msg.sender)].field_8)]);
    return 0
}

function OpenBankAccount() payable {
    require not uint8(getBankAccountNumber[address(msg.sender)].field_0)
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = (5 * stor3.length) + 5
        while 5 * stor3.length > idx:
            Mask(72, 0, stor3[idx].field_0) = 0
            uint256(stor3[idx].field_256) = 0
            address(stor3[idx].field_512) = 0
            uint256(stor3[idx].field_768) = 0
            idx = idx + 5
            continue 
    uint8(stor3[stor3.length].field_0) = 0
    uint32(stor3[stor3.length].field_8) = uint32(stor2.field_8)
    uint32(stor3[stor3.length].field_40) = 0
    Mask(184, 0, stor3[stor3.length].field_72) = 0
    uint256(stor3[stor3.length].field_256) = 0
    uint256(stor3[stor3.length].field_512) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_512))
    uint256(stor3[stor3.length].field_768) = 0x3000000000000000000000000000000000000000000000000000000000000000
    require uint32(stor2.field_8) < stor3.length
    uint8(stor[(5 * uint32(stor2.field_8)) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a1][sha3('password')]) = 1
    uint8(stor[(5 * uint32(stor2.field_8)) + 0x5cc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fc][sha3('Password')]) = 1
    uint8(getBankAccountNumber[address(msg.sender)].field_0) = 1
    Mask(248, 0, getBankAccountNumber[address(msg.sender)].field_8) = uint32(stor2.field_8)
    getBankAccountNumber[address(msg.sender)].field_256 % 1 = 0
    if msg.value > 0:
        require uint32(stor2.field_8) < stor3.length
        getBankAccountBalance[uint32(stor2.field_8)] += msg.value
    Mask(248, 0, stor2.field_8) = Mask(248, 0, uint32(stor2.field_8) + 1)
    emit event_bankAccountOpened_Successful(msg.sender, uint32(stor2.field_8), msg.value);
    return uint32(stor2.field_8)
}

function Security_ConnectBankAccountToNewOwnerAddress(uint32 arg1, string arg2) payable {
    require msg.value <= 0
    if 0 == bool(uint8(stor2.field_0)):
        emit event_securityConnectingABankAccountToANewOwnerAddressIsDisabled()
        return 0
    if arg1 >= uint32(stor2.field_8):
        return 0
    if uint8(getBankAccountNumber[address(msg.sender)].field_0):
        return 0
    require arg1 < stor3.length
    if not uint8(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[arg1].field_0):
        emit event_securityBankAccountConnectedToNewAddressOwner_Failed_PasswordHashHasNotBeenAddedToBankAccount(arg1);
        return 0
    require arg1 < stor3.length
    require arg1 < stor3.length
    if sha3(arg2[all]) != stor5CC2[arg1]:
        Mask(216, 0, security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[arg1].field_40) = Mask(216, 0, uint32(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[arg1].field_40) + 1)
        emit event_securityBankAccountConnectedToNewAddressOwner_Failed_SentPasswordDoesNotMatchAccountPasswordHash(arg1, uint32(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[arg1].field_40));
        return 0
    uint256(stor[code.data[7717 len 32] + (5 * arg1)]) = msg.sender or Mask(96, 160, uint256(stor[code.data[7717 len 32] + (5 * arg1)]))
    uint8(getBankAccountNumber[address(msg.sender)].field_0) = 1
    Mask(248, 0, getBankAccountNumber[address(msg.sender)].field_8) = Mask(248, 0, arg1)
    getBankAccountNumber[address(msg.sender)].field_256 % 1 = 0
    uint8(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[arg1].field_0) = 0
    storC257[arg1] = 0x3000000000000000000000000000000000000000000000000000000000000000
    uint32(security_GetNumberOfAttemptsToConnectBankAccountToANewOwner[arg1].field_40) = 0
    emit event_securityBankAccountConnectedToNewAddressOwner_Successful(arg1, msg.sender);
    return 1
}

function _fallback() payable {
    if uint8(getBankAccountNumber[address(msg.sender)].field_0):
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        require address(stor[(5 * uint32(stor4[address(msg.sender)].field_8)) + code.data[7717 len 32]]) == msg.sender
        require msg.value > 0
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        require stor5CC2[uint32(stor4[address(msg.sender)].field_8)] + msg.value >= stor5CC2[uint32(stor4[address(msg.sender)].field_8)]
        require uint32(getBankAccountNumber[address(msg.sender)].field_8) < stor3.length
        getBankAccountBalance[uint32(stor4[address(msg.sender)].field_8)] += msg.value
        emit event_depositMadeToBankAccount_Successful(uint32(getBankAccountNumber[address(msg.sender)].field_8), msg.value);
    else:
        require not uint8(getBankAccountNumber[address(msg.sender)].field_0)
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = (5 * stor3.length) + 5
            while 5 * stor3.length > idx:
                Mask(72, 0, stor3[idx].field_0) = 0
                uint256(stor3[idx].field_256) = 0
                address(stor3[idx].field_512) = 0
                uint256(stor3[idx].field_768) = 0
                idx = idx + 5
                continue 
        uint8(stor3[stor3.length].field_0) = 0
        uint32(stor3[stor3.length].field_8) = uint32(stor2.field_8)
        uint32(stor3[stor3.length].field_40) = 0
        Mask(184, 0, stor3[stor3.length].field_72) = 0
        uint256(stor3[stor3.length].field_256) = 0
        uint256(stor3[stor3.length].field_512) = msg.sender or Mask(96, 160, uint256(stor3[stor3.length].field_512))
        uint256(stor3[stor3.length].field_768) = 0x3000000000000000000000000000000000000000000000000000000000000000
        require uint32(stor2.field_8) < stor3.length
        uint8(stor[(5 * uint32(stor2.field_8)) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a1][sha3('password')]) = 1
        uint8(stor[(5 * uint32(stor2.field_8)) + 0x5cc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fc][sha3('Password')]) = 1
        uint8(getBankAccountNumber[address(msg.sender)].field_0) = 1
        Mask(248, 0, getBankAccountNumber[address(msg.sender)].field_8) = uint32(stor2.field_8)
        getBankAccountNumber[address(msg.sender)].field_256 % 1 = 0
        if msg.value > 0:
            require uint32(stor2.field_8) < stor3.length
            getBankAccountBalance[uint32(stor2.field_8)] += msg.value
        Mask(248, 0, stor2.field_8) = Mask(248, 0, uint32(stor2.field_8) + 1)
        emit event_bankAccountOpened_Successful(msg.sender, uint32(stor2.field_8), msg.value);
}



}
