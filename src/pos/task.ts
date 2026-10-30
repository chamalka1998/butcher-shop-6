import type { TaskConfig } from 'payload'

import { runPosJob } from './lightspeed/run'

export const runPosJobTask: TaskConfig = {
  slug: 'runPosJob',
  retries: 2,
  inputSchema: [{ name: 'posJobId', type: 'text', required: true }],
  outputSchema: [{ name: 'ok', type: 'checkbox', required: true }],
  handler: async ({ input, req }) => {
    const posJobId = String((input as { posJobId?: string }).posJobId || '')
    await runPosJob(req, posJobId)
    return { output: { ok: true } }
  },
}
