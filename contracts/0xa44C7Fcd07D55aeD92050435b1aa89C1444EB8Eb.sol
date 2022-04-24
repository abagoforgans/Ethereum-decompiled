contract main {


// =======================  Init code  ======================


uint8 stor0;
array of address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 0
    mem[96] = 0xfa1339037b78ac26d3afb7736d82a2ee46090219
    mem[128] = 0x53f343e06422ffb30b8a59a14dcf93e965977133
    mem[160] = 0x6f31bbeb19ecfe8c6f26f85dea1c65844dca2ca3
    mem[192] = 0xf587ab8b9db2ef5286664f6aca6aa2a1d1c4e5dd
    mem[224] = 0xe105c03fbfd97f87b90c599b50c450c859c218fc
    mem[256] = 0x14e56c60941b6d384722ecbc0e47170513d86d12
    mem[288] = 0x6cb1ab4b61c09da5c8fc3acab65c5b5624b9003a
    mem[320] = 0xcefc831ef127d834a7cae09bfe272a78378e889a
    mem[352] = 0xf94571dbdff33446dabd17040cd6236b0d2c2545
    mem[384] = 0x6a34fd159796522215e11483eddc1cdb2ee1bcb8
    mem[416] = 0x45b066f755d100cce6d60fba2d91d13956cfb663
    mem[448] = 0x55bae7db684e67ba1558b794ffdf1051c332975a
    mem[480] = 0x89be26cd4a3ec50ed50bf3f83516feebc26fc6ae
    mem[512] = 0x11775f3ea96c3adfd4587aacbf2df06791c8eafe
    mem[544] = 0x431fa6499b161c72d876f9785756e10717f76e7f
    mem[576] = 0x747be21b8cb1e76146c872950dd07e81c827967d
    mem[608] = 0xebf733bde1a19a391517302cb8ab6f9c8486cb19
    mem[640] = 0x47b6db115b3b35b82c0aa5f05de48d04d1c8f0a3
    mem[672] = 0xce2aba88baf7658383b33b828c64738b85efaeb2
    mem[704] = 0x7cbb973e51a46c243689dc6f779cf86ddb6af91c
    mem[736] = 0x4af257455b70e759de73f504e17ace8b24958a21
    mem[768] = 0x1cc0d986edab955e582fa4081844515ed4319dc0
    mem[800] = 0x77a7b8fcc69215794ea55cbb00504366d8ab22ae
    mem[832] = 0xcce32436e9d599f030532853ece8b3dd4cf0e2f3
    mem[864] = 0x557ce84e01d0735837cc76c3e10cd394e1e1e62e
    mem[896] = 0x69d602d6b80409839df55ca51ef1d9dd984a9268
    mem[928] = 0x65a3331c8c466bcb8408f99c28eef3aba794abca
    mem[960] = 0x42bf120193c8d028516331ddf86f3ebdb6b7a8c5
    mem[992] = 0x937f5687bca671a1636eb8a14b7d672b1fbaa339
    mem[1024] = 0xb4c787922111e4d5a347526b7fe1e5d43987c196
    mem[1056] = 0x1404c58e8b7fdd4c386193550d69a950cd1000b6
    stor1.length = 31
    s = 0
    idx = 96
    while 1088 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 31
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor2[0xfa1339037b78ac26d3afb7736d82a2ee46090219] = 1151126126126000
    stor2[0x53f343e06422ffb30b8a59a14dcf93e965977133] = 1363046518018030
    stor2[0x6f31bbeb19ecfe8c6f26f85dea1c65844dca2ca3] = 1711126126126050
    stor2[0xf587ab8b9db2ef5286664f6aca6aa2a1d1c4e5dd] = 1989397869369370
    stor2[0xe105c03fbfd97f87b90c599b50c450c859c218fc] = 2079713184684806
    stor2[0x14e56c60941b6d384722ecbc0e47170513d86d12] = 2146396396398640
    stor2[0x6cb1ab4b61c09da5c8fc3acab65c5b5624b9003a] = 2146830301799670
    stor2[0xcefc831ef127d834a7cae09bfe272a78378e889a] = 3235343815315456
    stor2[0xf94571dbdff33446dabd17040cd6236b0d2c2545] = 3614623094594780
    stor2[0x6a34fd159796522215e11483eddc1cdb2ee1bcb8] = 4079899249772540
    stor2[0x45b066f755d100cce6d60fba2d91d13956cfb663] = 4468693693693593
    stor2[0x55bae7db684e67ba1558b794ffdf1051c332975a] = 4516216216216093
    stor2[0x89be26cd4a3ec50ed50bf3f83516feebc26fc6ae] = 5232950450450519
    stor2[0x11775f3ea96c3adfd4587aacbf2df06791c8eafe] = 5739744947747726
    stor2[0x431fa6499b161c72d876f9785756e10717f76e7f] = 5812821292792976
    stor2[0x747be21b8cb1e76146c872950dd07e81c827967d] = 6018415151351525
    stor2[0xebf733bde1a19a391517302cb8ab6f9c8486cb19] = 6990990990991085
    stor2[0x47b6db115b3b35b82c0aa5f05de48d04d1c8f0a3] = 7146396396396400
    stor2[0xce2aba88baf7658383b33b828c64738b85efaeb2] = 7213963963963906
    stor2[0x7cbb973e51a46c243689dc6f779cf86ddb6af91c] = 8500020981934654
    stor2[0x4af257455b70e759de73f504e17ace8b24958a21] = 8605855855855915
    stor2[0x1cc0d986edab955e582fa4081844515ed4319dc0] = 8833558558558559
    stor2[0x77a7b8fcc69215794ea55cbb00504366d8ab22ae] = 8838632103603644
    stor2[0xcce32436e9d599f030532853ece8b3dd4cf0e2f3] = 9062097801801830
    stor2[0x557ce84e01d0735837cc76c3e10cd394e1e1e62e] = 9075225225222940
    stor2[0x69d602d6b80409839df55ca51ef1d9dd984a9268] = 9312033004504570
    stor2[0x65a3331c8c466bcb8408f99c28eef3aba794abca] = 9484234234234270
    stor2[0x42bf120193c8d028516331ddf86f3ebdb6b7a8c5] = 9568693693693520
    stor2[0x937f5687bca671a1636eb8a14b7d672b1fbaa339] = 9588496968468530
    stor2[0xb4c787922111e4d5a347526b7fe1e5d43987c196] = 9815163635135190
    stor2[0x1404c58e8b7fdd4c386193550d69a950cd1000b6] = 9903153153150830
    return code.data[5277 len 1594]
}



// =====================  Runtime code  =====================


const name = 'Test'

const symbol = 'Test'


uint8 stor0;
array of address members;
mapping of uint256 stor2;
mapping of uint8 stor3;

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1]
}

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

function testSendEth(uint256 arg1) payable {
    require not stor0
    require arg1 > 0
    idx = 0
    while idx < arg1:
        require idx < members.length
        require idx < members.length
        if not stor3[stor1[idx]]:
            call members[idx] with:
               value stor2[stor1[idx]] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[0] = members[idx]
        mem[32] = 3
        stor3[stor1[idx]] = 1
        idx = idx + 1
        continue 
    stor0 = 1
    return 1
}



}
