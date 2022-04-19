contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1908]




// =====================  Runtime code  =====================


array of struct loans;

function loans(uint256 arg1) {
    require arg1 < loans.length
    return loans[arg1].field_0
}

function _fallback() payable {
    revert
}

function registerLoan(address arg1) {
    require ext_code.size(arg1)
    call arg1.STATUS_INITIAL() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.status() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] == uint8(ext_call.return_data[0])
    loans.length++
    if not loans.length <= loans.length + 1:
        idx = loans.length + 1
        while loans.length > idx:
            loans[idx].field_0 = 0
            idx = idx + 1
            continue 
    loans[loans.length].field_0 = arg1
}

function registerLoanReplaceDuplicated(address arg1, uint256 arg2, uint256 arg3) {
    require arg2 < loans.length
    require arg3 < loans.length
    require arg3 != arg2
    require arg3 < loans.length
    require arg2 < loans.length
    require loans[arg2].field_0 == loans[arg3].field_0
    require ext_code.size(arg1)
    call arg1.STATUS_INITIAL() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.status() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] == uint8(ext_call.return_data[0])
    require arg2 < loans.length
    loans[arg2].field_0 = arg1
}

function getAllLoans() {
    if not loans.length:
        mem[(32 * loans.length) + 160] = 32
        mem[(32 * loans.length) + 192] = loans.length
        mem[(32 * loans.length) + 224 len floor32(loans.length)] = mem[160 len floor32(loans.length)]
        return memory
          from (32 * loans.length) + 160
           len (96 * loans.length) + 64
    mem[160] = address(loans.field_0)
    idx = 160
    s = 0
    while (32 * loans.length) + 128 > idx:
        mem[idx + 32] = loans[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * loans.length) + 224 len floor32(loans.length)] = mem[160 len floor32(loans.length)]
    return Array(len=loans.length, data=mem[160 len floor32(loans.length)], mem[(32 * loans.length) + floor32(loans.length) + 224 len (32 * loans.length) - floor32(loans.length)]), 
}

function registerLoanReplace(address arg1, uint256 arg2) {
    require arg2 < loans.length
    require ext_code.size(loans[arg2].field_0)
    call loans[arg2].field_0.STATUS_INITIAL() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(loans[arg2].field_0)
    call loans[arg2].field_0.status() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] != uint8(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.STATUS_INITIAL() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.status() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] == uint8(ext_call.return_data[0])
    require arg2 < loans.length
    loans[arg2].field_0 = arg1
}



}
