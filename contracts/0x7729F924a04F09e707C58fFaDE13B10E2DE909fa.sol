contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[56 len 2560]
}



// =====================  Runtime code  =====================


const name = 'Test'

const symbol = 'Test'


uint8 stor0;

function sent() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function fundtransfer() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_1dfa1b01(?) payable {
    require not stor0
    call 0xd750ee416b4533274a645fe9071cd2b6f86e8550 with:
       value 14298823529411800 wei
         gas 0 wei
    require ext_call.success
    call 0x932e86280dff390a7ce50f319009e6ae31849188 with:
       value 14383982715294200 wei
         gas 0 wei
    call 0x823cd59c9cc934bdca506d9407c877637a65f34d with:
       value 14867888597647100 wei
         gas 0 wei
    call 0x53e0ba6ab3e318cbc83bab56ac039f6341358c5d with:
       value 14872847058825700 wei
         gas 0 wei
    call 0x71c6da259bb42968d2727acf91e02446caecd286 with:
       value 14947078597647000 wei
         gas 0 wei
    call 0x3105769420f6be62f9554470f7b7a7bdb31f3c71 with:
       value 15014117647058800 wei
         gas 0 wei
    call 0x1cd7502b574b85e7195ae1c4755056cca76de491 with:
       value 15042117647058900 wei
         gas 0 wei
    call 0x09e6a264894beefeaab757196826f7c42b4b3f3f with:
       value 15244705882350600 wei
         gas 0 wei
    call 0x74119e85a22e7aacb435c674675f5896237be159 with:
       value 15244705882353000 wei
         gas 0 wei
    call 0x988d1e1958efdb98ec728dd84507f4c7e957f619 with:
       value 15558523891764900 wei
         gas 0 wei
    call 0x89edf78d238f3a8c2ccf448a0e163eaa88465523 with:
       value 15715512127058800 wei
         gas 0 wei
    call 0x2423f67640ecaeab4776184ab3c1c08696eb5c93 with:
       value 15830823529409400 wei
         gas 0 wei
    call 0x79c0d3912995d5b598189504d3b2e3845883303a with:
       value 15832382715294300 wei
         gas 0 wei
    call 0x85591bfabb18be044fa98d72f7093469c588483c with:
       value 16096218009411900 wei
         gas 0 wei
    call 0x54cd1da355c89bfcb2fd8190bed4f718d314860f with:
       value 16098001538823700 wei
         gas 0 wei
    call 0x326f448107ca23b09ee29e1769715bf51e0bb935 with:
       value 16439313891764900 wei
         gas 0 wei
    call 0x07ec31d781ee3b3a6b2cb52b014276152e56f369 with:
       value 16534170950588300 wei
         gas 0 wei
    call 0x4e754e3e1bd0a7b6fa3c38c12954f41a471720fd with:
       value 16776470588235300 wei
         gas 0 wei
    call 0x0469251f335098b7a658f25e79a4abb12ccab1bc with:
       value 17058823529411800 wei
         gas 0 wei
    stor0 = 1
    return 1
}



}
