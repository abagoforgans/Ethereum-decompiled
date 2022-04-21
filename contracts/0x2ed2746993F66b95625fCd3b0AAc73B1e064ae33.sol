contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 storF190;
uint256 stor2522;
uint256 stor2823;
uint256 stor418A;
uint256 stor497D;
uint256 stor57A8;
uint256 stor7519;
uint256 stor96C2;
uint256 storBB22;
uint256 storC4DC;
uint256 storDAD0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor2823 = 1
    storC4DC = 1
    stor96C2 = 1
    storBB22 = 2
    stor497D = 2
    stor57A8 = 16
    stor7519 = 16
    stor2522 = 4
    storF190 = 4
    stor418A = 8
    storDAD0 = 8
    return code.data[490 len 3912]
}



// =====================  Runtime code  =====================


const getTotalAmount = eth.balance(this.address)

const GetNow = block.number

const WAIT_BLOCKS = 15000


uint256 pendingAmount;
mapping of uint256 owners;
mapping of bool confirmations;
array of struct transactions;
uint256 storF190;
uint256 stor2522;
uint256 stor2823;
uint256 stor418A;
uint256 stor497D;
uint256 stor57A8;
uint256 stor7519;
uint256 stor96C2;
uint256 storBB22;
uint256 storC4DC;
uint256 storDAD0;

function owners(address arg1) {
    return owners[arg1]
}

function transactions(uint256 arg1) {
    require arg1 < transactions.length
    return transactions[arg1].field_0, 
           transactions[arg1].field_256,
           transactions[arg1].field_512,
           transactions[arg1].field_768,
           transactions[arg1].field_1024
}

function confirmations(uint256 arg1) {
    return uint256(confirmations[arg1])
}

function pendingAmount() {
    return pendingAmount
}

function getTotalNumberOfTransactions() {
    return transactions.length
}

function recieveFunds() payable {
  stop
}

function _fallback() payable {
    revert
}

function ConfirmTransaction(uint256 arg1) {
    require tx.origin == msg.sender
    require owners[address(msg.sender)] > 0
    uint256(confirmations[arg1]) = owners[address(msg.sender)]
}

function SetupAccounts() {
    stor2823 = 1
    storC4DC = 1
    stor96C2 = 1
    storBB22 = 2
    stor497D = 2
    stor57A8 = 16
    stor7519 = 16
    stor2522 = 4
    storF190 = 4
    stor418A = 8
    storDAD0 = 8
}

function ReverseConfirmTransaction(uint256 arg1) {
    require tx.origin == msg.sender
    require owners[address(msg.sender)] > 0
    uint256(confirmations[arg1]) = uint256(confirmations[arg1]) and !owners[address(msg.sender)]
}

function countConfirmations(uint256 arg1) {
    if not bool(confirmations[arg1]):
        return 0
    idx = uint256(confirmations[arg1])
    s = 0
    while idx > 0:
        idx = idx / 2
        s = bool(idx) + s
        continue 
    return s
}

function RegisterTokenTransaction(address arg1, uint256 arg2, address arg3) {
    require tx.origin == msg.sender
    require owners[address(msg.sender)] > 0
    if owners[address(msg.sender)] > 0:
        if arg2 + pendingAmount <= eth.balance(this.address):
            transactions.length++
            if not transactions.length <= transactions.length + 1:
                idx = (5 * transactions.length) + 5
                while 5 * transactions.length > idx:
                    transactions[idx].field_0 = 0
                    transactions[idx].field_256 = 0
                    transactions[idx].field_512 = 0
                    transactions[idx].field_768 = 0
                    transactions[idx].field_1024 = 0
                    idx = idx + 5
                    continue 
            require ext_code.size(this.address)
            call this.address.0xb56ebf42 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            transactions[transactions.length].field_0 = arg1
            transactions[transactions.length].field_256 = arg2
            transactions[transactions.length].field_512 = arg2
            transactions[transactions.length].field_768 = ext_call.return_data[0]
            transactions[transactions.length].field_1024 = arg3
            pendingAmount += arg2
}

function RegisterTransaction(address arg1, uint256 arg2) {
    require tx.origin == msg.sender
    require owners[address(msg.sender)] > 0
    if owners[address(msg.sender)] > 0:
        if arg2 + pendingAmount <= eth.balance(this.address):
            transactions.length++
            if not transactions.length <= transactions.length + 1:
                idx = (5 * transactions.length) + 5
                while 5 * transactions.length > idx:
                    transactions[idx].field_0 = 0
                    transactions[idx].field_256 = 0
                    transactions[idx].field_512 = 0
                    transactions[idx].field_768 = 0
                    transactions[idx].field_1024 = 0
                    idx = idx + 5
                    continue 
            require ext_code.size(this.address)
            call this.address.0xb56ebf42 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            transactions[transactions.length].field_0 = arg1
            transactions[transactions.length].field_256 = arg2
            transactions[transactions.length].field_512 = arg2
            transactions[transactions.length].field_768 = ext_call.return_data[0]
            transactions[transactions.length].field_1024 = 0
            transactions[transactions.length].field_1280 = 0
            pendingAmount += arg2
}

function ProcessTransaction(uint256 arg1) {
    require tx.origin == msg.sender
    require owners[address(msg.sender)] > 0
    if owners[address(msg.sender)] > 0:
        require ext_code.size(this.address)
        call this.address.0xbf052a8a with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0] < 3:
            require ext_code.size(this.address)
            call this.address.0xb56ebf42 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require arg1 < transactions.length
            require transactions[arg1].field_768 < ext_call.return_data[0] - 15000
            require arg1 < transactions.length
            pendingAmount -= transactions[arg1].field_256
            transactions[arg1].field_256 = 0
        else:
            require arg1 < transactions.length
            if transactions[arg1].field_256 <= 0:
                require ext_code.size(this.address)
                call this.address.0xb56ebf42 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require arg1 < transactions.length
                require transactions[arg1].field_768 < ext_call.return_data[0] - 15000
                require arg1 < transactions.length
                pendingAmount -= transactions[arg1].field_256
                transactions[arg1].field_256 = 0
            else:
                require arg1 < transactions.length
                require arg1 < transactions.length
                transactions[arg1].field_256 = 0
                transactions[arg1].field_512 = transactions[arg1].field_256
                if transactions[arg1].field_1024:
                    require ext_code.size(transactions[arg1].field_1024)
                    call transactions[arg1].field_1024.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args transactions[arg1].field_0, transactions[arg1].field_256
                    require ext_call.success
                else:
                    call transactions[arg1].field_0 with:
                       value transactions[arg1].field_256 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    pendingAmount -= transactions[arg1].field_256
}



}
