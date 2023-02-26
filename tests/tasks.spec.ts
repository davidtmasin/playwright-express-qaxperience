import { test, expect } from '@playwright/test'
import { faker } from '@faker-js/faker/locale/pt_BR'

test('deve poder cadastrar uma nova tarefa', async ({ page }) => {

    await page.goto('http://localhost:3000')

    // await page.fill('input[class*=InputNewTask]', 'Tarefa-teste')
    const inputTaskName = page.locator('input[class*=InputNewTask]')
    await inputTaskName.fill(faker.lorem.words())

    // await page.click('xpath=//button[contains(text(), "Create")]')
    // await inputTaskName.press('Enter')
    await page.click('css=button >> text=Create')
})